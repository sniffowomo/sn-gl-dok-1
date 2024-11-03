// TZ/tbun1/index.ts

// Type defi

type ChatResponse = {
  choices: Array<{
    message: {
      content: string
    }
  }>
}

// Configuration
const CONFIG = {
  PANTY_KEY:
    "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",
  MODEL: "meta-llama/llama-3.2-3b-instruct:free",
  API_URL: "https://openrouter.ai/api/v1/chat/completions",
}

// Utility function for making API requests
async function makeApiRequest<T>(
  url: string,
  options: RequestInit
): Promise<T> {
  try {
    const response = await fetch(url, options)
    return await response.json()
  } catch (error) {
    console.error("API Request Error:", error)
    throw error
  }
}

// Function to interact with the chat API
async function pantychat(): Promise<ChatResponse> {
  const options: RequestInit = {
    method: "POST",
    headers: {
      Authorization: `Bearer ${CONFIG.PANTY_KEY}`,
      "Content-Type": "application/json",
    },
    body: JSON.stringify({
      model: CONFIG.MODEL,
      messages: [
        {
          role: "user",
          content: "Write go lang program",
        },
      ],
    }),
  }

  return makeApiRequest<ChatResponse>(CONFIG.API_URL, options)
}

// Function to process chat response
function processChatResponse(data: ChatResponse): void {
  if (data?.choices?.length > 0 && data.choices[0].message) {
    const content = data.choices[0].message.content
    console.log("Message content:", content)
  } else {
    console.log("Unable to extract message content from the response")
  }
}

// Main function to run the application
async function main() {
  console.log("Hello via Bun!")
  console.log("Hey man - This is the main one")

  // Perform chat interaction
  try {
    const chatResponse = await pantychat()
    processChatResponse(chatResponse)
  } catch (error) {
    console.error("Error in pantychat:", error)
  }
}

type Key = {
  data: {
    label: string
    usage: number // Number of credits used
    limit: number | null // Credit limit for the key, or null if unlimited
    is_free_tier: boolean // Whether the user has paid for credits before
    rate_limit: {
      requests: number // Number of requests allowed...
      interval: string // in this interval, e.g., "10s"
    }
  }
}

async function fetchRemainingCredits() {
  try {
    const response = await fetch(
      "https://openrouter.ai/api/v1/auth/CONFIG.PANTY_KEY",
      {
        method: "GET",
        headers: {
          Authorization: "Bearer CONFIG.PANTY_KEY",
        },
      }
    )

    if (!response.ok) {
      throw new Error(`HTTP error! status: ${response.status}`)
    }

    const text = await response.text()
    console.log("Response text:", text) // Debugging line
    const data: Key = JSON.parse(text)

    const remainingCredits =
      data.data.limit !== null ? data.data.limit - data.data.usage : "Unlimited"

    console.log("Remaining credits:")
    console.log("+" + "-".repeat(20) + "+")
    console.log("| " + " ".repeat(18) + " |")
    console.log("| " + remainingCredits.toString().padEnd(18) + " |")
    console.log("| " + " ".repeat(18) + " |")
    console.log("+" + "-".repeat(20) + "+")
  } catch (error) {
    console.error("Error fetching remaining credits:", error)
  }
}

// Run the main function
main().catch((error) => console.error("Main function error:", error))
fetchRemainingCredits()
