defmodule LangchainElixir do
  @moduledoc false

  alias LangChain.ChatModels.ChatOpenAI
  alias LangChain.Chains.LLMChain
  alias LangChain.Message

  def generate do
    {:ok, chatgpt} = ChatOpenAI.new(%{model: "gpt-5", temperature: 1})

    LLMChain.new!(%{llm: chatgpt})
    |> LLMChain.add_message(Message.new_user!("Explain quantum computing in a few words"))
    |> LLMChain.run()
  end
end
