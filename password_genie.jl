using ProgressBars
using Random

function password_genie()
    password_length = parse(Int64, Base.prompt("How long should each password be?"))
    num_of_passwords = parse(Int64, Base.prompt("How many passwords do you need?"))


    password_list = []

    for i in ProgressBar(1:num_of_passwords)
        push!(password_list, randstring(password_length))
        sleep(0.2) 
    end
    
    if length(password_list) <= 100
        for password in password_list
            print("\n", password)
        end
    end
end

generate_passwords()
