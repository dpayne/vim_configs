require("codegpt.config")

-- vim.g["codegpt_chat_completions_url"] = "http://127.0.0.1:5000/test"

vim.g["codegpt_commands"] = {
    ["completion"] = {
        language_instructions = {
            cpp = "Use modern C++ syntax. Use auto where possible. Do not import std. Use trailing return type.",
        },
    },
    ["code_edit"] = {
        language_instructions = {
            cpp = "Use modern C++ syntax. Use auto where possible. Do not import std. Use trailing return type.",
        },
    },
    ["tests"] = {
        language_instructions = {
            cpp = "Use modern C++ syntax. Use auto where possible. Do not import std. Generate unit tests using the gtest framework.",
            python = "Use the pytest unit framework",
        },
    },
    ["opt"] = {
        language_instructions = {
            cpp = "Use modern C++ syntax. Use auto where possible. Do not import std. Use trailing return type.",
        },
    },
    ["modernize"] = {
        user_message_template = "I have the following {{language}} code: ```{{filetype}}\n{{input}}```\nModernize the above code. Use current best practices. Only return the code snippet and comments. {{language_instructions}}",
        language_instructions = {
            cpp = "Use modern C++ syntax. Use auto where possible. Do not import std. Use trailing return type. Use the c++11, c++14, c++17, and c++20 standards where applicable.",
        },
    }
}
