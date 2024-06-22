<?php

class Route{
    private string $controller;

    private string $method;

    private string $httpVerb;

    private string $uri;

    /**
     * @param string $controller
     * 
     * @param string $method
     * 
     * @param string $httpVerb
     * 
     * @param string $uri
     */
    public function __construct(string $controller, string $method, string $httpVerb, string $uri){
        $this->controller = $controller;
        $this->method = $method;
        $this->httpVerb = $httpVerb;
        $this->uri = $uri;
    }

    public function getController(): string 
    {
        return $this->controller;
    }

    public function getMethod(): string
    {
        return $this->method;
    }

    public function getHttpVerb(): string
    {
        return $this->httpVerb;
    }

    public function getUri(): string
    {
        return $this->uri;
    }
}