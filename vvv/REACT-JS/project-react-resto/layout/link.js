const url = "http://localhost:8000/api";
let token = "yPI6dpVuiq3bcdrnEFLIsIm69sF4QrVZozSldxaC";

export const link = axios.create({
    baseURL : url,
    headers:{
        'api_token' : token
    }
});