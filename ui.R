library(shiny)
shinyUI(pageWithSidebar(
        headerPanel("Rent Calculator"),
        sidebarPanel(
                h4('Property'),
                textInput('text', 'Address', value=''),
                numericInput('price', 'Price ($)', 450000),
                numericInput('weeklyRent', 'Weekly Rent ($)', 500),
                h5('Costs'),
                numericInput('weeklyRepayments', 'Weekly Repayments ($ per week)', 500),
                numericInput('strataPerQuarter', 'Insurance ($ per quarter)', 200),
                numericInput('waterPerQuarter', 'Cost of Utilities ($ per quarter)', 150),
                numericInput('managementFees', 'Management Fees ($ per week)', 70)
        ),
        mainPanel(
                h4('Rental Yield (%)'),
                textOutput("rentalYield"),
                h4('Cashflow Per Week ($)'),
                textOutput("cashflowPerWeek"),
                h4('Cashflow Per Year ($)'),
                textOutput("cashflowPerYear"),
                br(),
                h4('Instructions'),
                helpText("This application is for property owners to calculate the rental yield of a property and estimate the cashflow of renting out the property. Your property agent should be able to help you with the numbers."),
                code("Rental Yield"),
                helpText("Enter the property's price and expected weekly rental income to calculate the rental yield."),
                code("Cashflow"),
                helpText("Enter the cost of holding the property to estimate the cashflow of owning the property.")
        )
))