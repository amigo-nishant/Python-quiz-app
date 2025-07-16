
# A Flask-based application

## Prerequisites

- Python 3.x --> https://www.python.org/downloads/source/
- `pip` - Python package installer ( sudo apt install python3-pip )
- Docker Installed 

### Setup steps locally before writing Dockerfile

1. Clone the repository:

   ```
   git clone https://github.com/amigo-nishant/Python-quiz-app.git
   ```
   
1. Navigate to the project directory:
    
    ```
    cd Python-quiz-app
    ```
    
2. Create a virtual environment:
    
    ```
    sudo apt install python3-venv -y
    ```
    
3. Activate the virtual environment: NOTE - if venv is broken delete the venv via rm -rf venv and then activate
    
    ```
    rm -rf venv
    python3 -m venv venv
    ```
    
4. Install dependencies:
    
    ```
    pip install -r requirements.txt
    ```
    

## **Run the Application**

1. Ensure the virtual environment is activated:
    
    ```
    source venv/bin/activate
    ```
    
2. Run the Flask application:
    
    ```
    python app.py
    ```
    
3. Open your web browser and visit [http://PublicIP:5000](http://PublicIP:5000/) to access the Python Quiz App.

## **Deactivate the Virtual Environment**

When you're done using the application, deactivate the virtual environment:

```
deactivate
```

## **License**

This project is licensed under the MIT License - see the [LICENSE](https://chat.openai.com/c/LICENSE) file for details.
