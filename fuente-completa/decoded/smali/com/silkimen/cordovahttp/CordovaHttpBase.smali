.class abstract Lcom/silkimen/cordovahttp/CordovaHttpBase;
.super Ljava/lang/Object;
.source "CordovaHttpBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field protected static final TAG:Ljava/lang/String; = "Cordova-Plugin-HTTP"


# instance fields
.field protected callbackContext:Lcom/silkimen/cordovahttp/CordovaObservableCallbackContext;

.field protected connectTimeout:I

.field protected data:Ljava/lang/Object;

.field protected followRedirects:Z

.field protected headers:Lorg/json/JSONObject;

.field protected method:Ljava/lang/String;

.field protected readTimeout:I

.field protected responseType:Ljava/lang/String;

.field protected serializer:Ljava/lang/String;

.field protected tlsConfiguration:Lcom/silkimen/http/TLSConfiguration;

.field protected url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;IIZLjava/lang/String;Lcom/silkimen/http/TLSConfiguration;Lcom/silkimen/cordovahttp/CordovaObservableCallbackContext;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/silkimen/cordovahttp/CordovaHttpBase;->method:Ljava/lang/String;

    .line 49
    iput-object p2, p0, Lcom/silkimen/cordovahttp/CordovaHttpBase;->url:Ljava/lang/String;

    .line 50
    iput-object p3, p0, Lcom/silkimen/cordovahttp/CordovaHttpBase;->serializer:Ljava/lang/String;

    .line 51
    iput-object p4, p0, Lcom/silkimen/cordovahttp/CordovaHttpBase;->data:Ljava/lang/Object;

    .line 52
    iput-object p5, p0, Lcom/silkimen/cordovahttp/CordovaHttpBase;->headers:Lorg/json/JSONObject;

    .line 53
    iput p6, p0, Lcom/silkimen/cordovahttp/CordovaHttpBase;->connectTimeout:I

    .line 54
    iput p7, p0, Lcom/silkimen/cordovahttp/CordovaHttpBase;->readTimeout:I

    .line 55
    iput-boolean p8, p0, Lcom/silkimen/cordovahttp/CordovaHttpBase;->followRedirects:Z

    .line 56
    iput-object p9, p0, Lcom/silkimen/cordovahttp/CordovaHttpBase;->responseType:Ljava/lang/String;

    .line 57
    iput-object p10, p0, Lcom/silkimen/cordovahttp/CordovaHttpBase;->tlsConfiguration:Lcom/silkimen/http/TLSConfiguration;

    .line 58
    iput-object p11, p0, Lcom/silkimen/cordovahttp/CordovaHttpBase;->callbackContext:Lcom/silkimen/cordovahttp/CordovaObservableCallbackContext;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;IIZLjava/lang/String;Lcom/silkimen/http/TLSConfiguration;Lcom/silkimen/cordovahttp/CordovaObservableCallbackContext;)V
    .locals 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-string v0, "none"

    iput-object v0, p0, Lcom/silkimen/cordovahttp/CordovaHttpBase;->serializer:Ljava/lang/String;

    .line 64
    iput-object p1, p0, Lcom/silkimen/cordovahttp/CordovaHttpBase;->method:Ljava/lang/String;

    .line 65
    iput-object p2, p0, Lcom/silkimen/cordovahttp/CordovaHttpBase;->url:Ljava/lang/String;

    .line 66
    iput-object p3, p0, Lcom/silkimen/cordovahttp/CordovaHttpBase;->headers:Lorg/json/JSONObject;

    .line 67
    iput p4, p0, Lcom/silkimen/cordovahttp/CordovaHttpBase;->connectTimeout:I

    .line 68
    iput p5, p0, Lcom/silkimen/cordovahttp/CordovaHttpBase;->readTimeout:I

    .line 69
    iput-boolean p6, p0, Lcom/silkimen/cordovahttp/CordovaHttpBase;->followRedirects:Z

    .line 70
    iput-object p7, p0, Lcom/silkimen/cordovahttp/CordovaHttpBase;->responseType:Ljava/lang/String;

    .line 71
    iput-object p8, p0, Lcom/silkimen/cordovahttp/CordovaHttpBase;->tlsConfiguration:Lcom/silkimen/http/TLSConfiguration;

    .line 72
    iput-object p9, p0, Lcom/silkimen/cordovahttp/CordovaHttpBase;->callbackContext:Lcom/silkimen/cordovahttp/CordovaObservableCallbackContext;

    return-void
.end method


# virtual methods
.method protected createRequest()Lcom/silkimen/http/HttpRequest;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 129
    new-instance v0, Lcom/silkimen/http/HttpRequest;

    iget-object v1, p0, Lcom/silkimen/cordovahttp/CordovaHttpBase;->url:Ljava/lang/String;

    iget-object v2, p0, Lcom/silkimen/cordovahttp/CordovaHttpBase;->method:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/silkimen/http/HttpRequest;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    return-object v0
.end method

.method protected prepareRequest(Lcom/silkimen/http/HttpRequest;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 133
    iget-boolean v0, p0, Lcom/silkimen/cordovahttp/CordovaHttpBase;->followRedirects:Z

    invoke-virtual {p1, v0}, Lcom/silkimen/http/HttpRequest;->followRedirects(Z)Lcom/silkimen/http/HttpRequest;

    .line 134
    iget v0, p0, Lcom/silkimen/cordovahttp/CordovaHttpBase;->connectTimeout:I

    invoke-virtual {p1, v0}, Lcom/silkimen/http/HttpRequest;->connectTimeout(I)Lcom/silkimen/http/HttpRequest;

    .line 135
    iget v0, p0, Lcom/silkimen/cordovahttp/CordovaHttpBase;->readTimeout:I

    invoke-virtual {p1, v0}, Lcom/silkimen/http/HttpRequest;->readTimeout(I)Lcom/silkimen/http/HttpRequest;

    .line 136
    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Lcom/silkimen/http/HttpRequest;->acceptCharset(Ljava/lang/String;)Lcom/silkimen/http/HttpRequest;

    const/4 v0, 0x1

    .line 137
    invoke-virtual {p1, v0}, Lcom/silkimen/http/HttpRequest;->uncompress(Z)Lcom/silkimen/http/HttpRequest;

    .line 139
    iget-object v0, p0, Lcom/silkimen/cordovahttp/CordovaHttpBase;->tlsConfiguration:Lcom/silkimen/http/TLSConfiguration;

    invoke-virtual {v0}, Lcom/silkimen/http/TLSConfiguration;->getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/silkimen/cordovahttp/CordovaHttpBase;->tlsConfiguration:Lcom/silkimen/http/TLSConfiguration;

    invoke-virtual {v0}, Lcom/silkimen/http/TLSConfiguration;->getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/silkimen/http/HttpRequest;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lcom/silkimen/http/HttpRequest;

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/silkimen/cordovahttp/CordovaHttpBase;->tlsConfiguration:Lcom/silkimen/http/TLSConfiguration;

    invoke-virtual {v0}, Lcom/silkimen/http/TLSConfiguration;->getTLSSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/silkimen/http/HttpRequest;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)Lcom/silkimen/http/HttpRequest;

    .line 146
    invoke-virtual {p0, p1}, Lcom/silkimen/cordovahttp/CordovaHttpBase;->setContentType(Lcom/silkimen/http/HttpRequest;)V

    .line 148
    iget-object v0, p0, Lcom/silkimen/cordovahttp/CordovaHttpBase;->headers:Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/silkimen/http/JsonUtils;->getStringMap(Lorg/json/JSONObject;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/silkimen/http/HttpRequest;->headers(Ljava/util/Map;)Lcom/silkimen/http/HttpRequest;

    return-void
.end method

.method protected processResponse(Lcom/silkimen/http/HttpRequest;Lcom/silkimen/cordovahttp/CordovaHttpResponse;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 204
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 205
    invoke-virtual {p1, v0}, Lcom/silkimen/http/HttpRequest;->receive(Ljava/io/OutputStream;)Lcom/silkimen/http/HttpRequest;

    .line 207
    invoke-virtual {p1}, Lcom/silkimen/http/HttpRequest;->code()I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/silkimen/cordovahttp/CordovaHttpResponse;->setStatus(I)V

    .line 208
    invoke-virtual {p1}, Lcom/silkimen/http/HttpRequest;->url()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/silkimen/cordovahttp/CordovaHttpResponse;->setUrl(Ljava/lang/String;)V

    .line 209
    invoke-virtual {p1}, Lcom/silkimen/http/HttpRequest;->headers()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/silkimen/cordovahttp/CordovaHttpResponse;->setHeaders(Ljava/util/Map;)V

    .line 211
    invoke-virtual {p1}, Lcom/silkimen/http/HttpRequest;->code()I

    move-result v1

    const/16 v2, 0xc8

    if-lt v1, v2, :cond_2

    invoke-virtual {p1}, Lcom/silkimen/http/HttpRequest;->code()I

    move-result v1

    const/16 v2, 0x12c

    if-ge v1, v2, :cond_2

    .line 212
    const-string v1, "text"

    iget-object v2, p0, Lcom/silkimen/cordovahttp/CordovaHttpBase;->responseType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "json"

    iget-object v2, p0, Lcom/silkimen/cordovahttp/CordovaHttpBase;->responseType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 216
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/silkimen/cordovahttp/CordovaHttpResponse;->setData([B)V

    return-void

    .line 213
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p1}, Lcom/silkimen/http/HttpRequest;->charset()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/silkimen/http/HttpBodyDecoder;->decodeBody([BLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 214
    invoke-virtual {p2, p1}, Lcom/silkimen/cordovahttp/CordovaHttpResponse;->setBody(Ljava/lang/String;)V

    return-void

    .line 219
    :cond_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p1}, Lcom/silkimen/http/HttpRequest;->charset()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/silkimen/http/HttpBodyDecoder;->decodeBody([BLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/silkimen/cordovahttp/CordovaHttpResponse;->setErrorMessage(Ljava/lang/String;)V

    return-void
.end method

.method public run()V
    .locals 8

    .line 77
    const-string v0, "Cordova-Plugin-HTTP"

    new-instance v1, Lcom/silkimen/cordovahttp/CordovaHttpResponse;

    invoke-direct {v1}, Lcom/silkimen/cordovahttp/CordovaHttpResponse;-><init>()V

    const/4 v2, -0x1

    const/4 v3, 0x0

    .line 81
    :try_start_0
    invoke-virtual {p0}, Lcom/silkimen/cordovahttp/CordovaHttpBase;->createRequest()Lcom/silkimen/http/HttpRequest;

    move-result-object v3

    .line 82
    invoke-virtual {p0, v3}, Lcom/silkimen/cordovahttp/CordovaHttpBase;->prepareRequest(Lcom/silkimen/http/HttpRequest;)V

    .line 83
    invoke-virtual {p0, v3}, Lcom/silkimen/cordovahttp/CordovaHttpBase;->sendBody(Lcom/silkimen/http/HttpRequest;)V

    .line 84
    invoke-virtual {p0, v3, v1}, Lcom/silkimen/cordovahttp/CordovaHttpBase;->processResponse(Lcom/silkimen/http/HttpRequest;Lcom/silkimen/cordovahttp/CordovaHttpResponse;)V

    .line 85
    invoke-virtual {v3}, Lcom/silkimen/http/HttpRequest;->disconnect()Lcom/silkimen/http/HttpRequest;
    :try_end_0
    .catch Lcom/silkimen/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v3

    .line 112
    invoke-virtual {v1, v2}, Lcom/silkimen/cordovahttp/CordovaHttpResponse;->setStatus(I)V

    .line 113
    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/silkimen/cordovahttp/CordovaHttpResponse;->setErrorMessage(Ljava/lang/String;)V

    .line 114
    const-string v2, "An unexpected error occured"

    invoke-static {v0, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 110
    :catch_1
    invoke-virtual {p0, v3, v1}, Lcom/silkimen/cordovahttp/CordovaHttpBase;->setAborted(Lcom/silkimen/http/HttpRequest;Lcom/silkimen/cordovahttp/CordovaHttpResponse;)V

    goto/16 :goto_0

    :catch_2
    move-exception v4

    .line 87
    invoke-virtual {v4}, Lcom/silkimen/http/HttpRequest$HttpRequestException;->getCause()Ljava/io/IOException;

    move-result-object v5

    .line 88
    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    .line 90
    instance-of v7, v5, Ljavax/net/ssl/SSLException;

    if-eqz v7, :cond_0

    const/4 v2, -0x2

    .line 91
    invoke-virtual {v1, v2}, Lcom/silkimen/cordovahttp/CordovaHttpResponse;->setStatus(I)V

    .line 92
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "TLS connection could not be established: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/silkimen/http/HttpRequest$HttpRequestException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/silkimen/cordovahttp/CordovaHttpResponse;->setErrorMessage(Ljava/lang/String;)V

    .line 93
    const-string v2, "TLS connection could not be established"

    invoke-static {v0, v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 94
    :cond_0
    instance-of v7, v5, Ljava/net/UnknownHostException;

    if-eqz v7, :cond_1

    const/4 v2, -0x3

    .line 95
    invoke-virtual {v1, v2}, Lcom/silkimen/cordovahttp/CordovaHttpResponse;->setStatus(I)V

    .line 96
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Host could not be resolved: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/silkimen/http/HttpRequest$HttpRequestException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/silkimen/cordovahttp/CordovaHttpResponse;->setErrorMessage(Ljava/lang/String;)V

    .line 97
    const-string v2, "Host could not be resolved"

    invoke-static {v0, v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 98
    :cond_1
    instance-of v7, v5, Ljava/net/SocketTimeoutException;

    if-eqz v7, :cond_2

    const/4 v2, -0x4

    .line 99
    invoke-virtual {v1, v2}, Lcom/silkimen/cordovahttp/CordovaHttpResponse;->setStatus(I)V

    .line 100
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Request timed out: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/silkimen/http/HttpRequest$HttpRequestException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/silkimen/cordovahttp/CordovaHttpResponse;->setErrorMessage(Ljava/lang/String;)V

    .line 101
    const-string v2, "Request timed out"

    invoke-static {v0, v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 102
    :cond_2
    instance-of v5, v5, Ljava/io/InterruptedIOException;

    if-eqz v5, :cond_3

    const-string v5, "thread interrupted"

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 103
    invoke-virtual {p0, v3, v1}, Lcom/silkimen/cordovahttp/CordovaHttpBase;->setAborted(Lcom/silkimen/http/HttpRequest;Lcom/silkimen/cordovahttp/CordovaHttpResponse;)V

    goto :goto_0

    .line 105
    :cond_3
    invoke-virtual {v1, v2}, Lcom/silkimen/cordovahttp/CordovaHttpResponse;->setStatus(I)V

    .line 106
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "There was an error with the request: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/silkimen/cordovahttp/CordovaHttpResponse;->setErrorMessage(Ljava/lang/String;)V

    .line 107
    const-string v2, "Generic request error"

    invoke-static {v0, v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 118
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Lcom/silkimen/cordovahttp/CordovaHttpResponse;->hasFailed()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 119
    iget-object v2, p0, Lcom/silkimen/cordovahttp/CordovaHttpBase;->callbackContext:Lcom/silkimen/cordovahttp/CordovaObservableCallbackContext;

    invoke-virtual {v1}, Lcom/silkimen/cordovahttp/CordovaHttpResponse;->toJSON()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/silkimen/cordovahttp/CordovaObservableCallbackContext;->error(Lorg/json/JSONObject;)V

    goto :goto_1

    .line 121
    :cond_4
    iget-object v2, p0, Lcom/silkimen/cordovahttp/CordovaHttpBase;->callbackContext:Lcom/silkimen/cordovahttp/CordovaObservableCallbackContext;

    invoke-virtual {v1}, Lcom/silkimen/cordovahttp/CordovaHttpResponse;->toJSON()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/silkimen/cordovahttp/CordovaObservableCallbackContext;->success(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_1

    :catch_3
    move-exception v1

    .line 124
    const-string v2, "An unexpected error occured while creating HTTP response object"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method protected sendBody(Lcom/silkimen/http/HttpRequest;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 166
    iget-object v0, p0, Lcom/silkimen/cordovahttp/CordovaHttpBase;->data:Ljava/lang/Object;

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 170
    :cond_0
    const-string v0, "json"

    iget-object v1, p0, Lcom/silkimen/cordovahttp/CordovaHttpBase;->serializer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 171
    iget-object v0, p0, Lcom/silkimen/cordovahttp/CordovaHttpBase;->data:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/silkimen/http/HttpRequest;->send(Ljava/lang/CharSequence;)Lcom/silkimen/http/HttpRequest;

    return-void

    .line 172
    :cond_1
    const-string v0, "utf8"

    iget-object v1, p0, Lcom/silkimen/cordovahttp/CordovaHttpBase;->serializer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 173
    iget-object v0, p0, Lcom/silkimen/cordovahttp/CordovaHttpBase;->data:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    const-string v1, "text"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/silkimen/http/HttpRequest;->send(Ljava/lang/CharSequence;)Lcom/silkimen/http/HttpRequest;

    return-void

    .line 174
    :cond_2
    const-string v0, "raw"

    iget-object v1, p0, Lcom/silkimen/cordovahttp/CordovaHttpBase;->serializer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 175
    iget-object v0, p0, Lcom/silkimen/cordovahttp/CordovaHttpBase;->data:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/silkimen/http/HttpRequest;->send([B)Lcom/silkimen/http/HttpRequest;

    return-void

    .line 176
    :cond_3
    const-string v0, "urlencoded"

    iget-object v2, p0, Lcom/silkimen/cordovahttp/CordovaHttpBase;->serializer:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 177
    iget-object v0, p0, Lcom/silkimen/cordovahttp/CordovaHttpBase;->data:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/silkimen/http/JsonUtils;->getObjectMap(Lorg/json/JSONObject;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/silkimen/http/HttpRequest;->form(Ljava/util/Map;)Lcom/silkimen/http/HttpRequest;

    return-void

    .line 178
    :cond_4
    const-string v0, "multipart"

    iget-object v2, p0, Lcom/silkimen/cordovahttp/CordovaHttpBase;->serializer:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 179
    iget-object v0, p0, Lcom/silkimen/cordovahttp/CordovaHttpBase;->data:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    const-string v2, "buffers"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 180
    iget-object v2, p0, Lcom/silkimen/cordovahttp/CordovaHttpBase;->data:Ljava/lang/Object;

    check-cast v2, Lorg/json/JSONObject;

    const-string v3, "names"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 181
    iget-object v3, p0, Lcom/silkimen/cordovahttp/CordovaHttpBase;->data:Ljava/lang/Object;

    check-cast v3, Lorg/json/JSONObject;

    const-string v4, "fileNames"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 182
    iget-object v4, p0, Lcom/silkimen/cordovahttp/CordovaHttpBase;->data:Ljava/lang/Object;

    check-cast v4, Lorg/json/JSONObject;

    const-string v5, "types"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    move v5, v1

    .line 184
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_6

    .line 185
    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v6

    .line 186
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 188
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->isNull(I)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 189
    new-instance v8, Ljava/lang/String;

    const-string v9, "UTF-8"

    invoke-direct {v8, v6, v9}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p1, v7, v8}, Lcom/silkimen/http/HttpRequest;->part(Ljava/lang/String;Ljava/lang/String;)Lcom/silkimen/http/HttpRequest;

    goto :goto_1

    .line 191
    :cond_5
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/io/ByteArrayInputStream;

    invoke-direct {v10, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p1, v7, v8, v9, v10}, Lcom/silkimen/http/HttpRequest;->part(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Lcom/silkimen/http/HttpRequest;

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 196
    :cond_6
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_7

    .line 197
    const-string v0, "multipart/form-data; boundary=00content0boundary00"

    invoke-virtual {p1, v0}, Lcom/silkimen/http/HttpRequest;->contentType(Ljava/lang/String;)Lcom/silkimen/http/HttpRequest;

    .line 198
    const-string v0, "\r\n--00content0boundary00--\r\n"

    invoke-virtual {p1, v0}, Lcom/silkimen/http/HttpRequest;->send(Ljava/lang/CharSequence;)Lcom/silkimen/http/HttpRequest;

    :cond_7
    :goto_2
    return-void
.end method

.method protected setAborted(Lcom/silkimen/http/HttpRequest;Lcom/silkimen/cordovahttp/CordovaHttpResponse;)V
    .locals 2

    const/4 v0, -0x8

    .line 224
    invoke-virtual {p2, v0}, Lcom/silkimen/cordovahttp/CordovaHttpResponse;->setStatus(I)V

    .line 225
    const-string v0, "Request was aborted"

    invoke-virtual {p2, v0}, Lcom/silkimen/cordovahttp/CordovaHttpResponse;->setErrorMessage(Ljava/lang/String;)V

    .line 227
    const-string p2, "Cordova-Plugin-HTTP"

    if-eqz p1, :cond_0

    .line 229
    :try_start_0
    invoke-virtual {p1}, Lcom/silkimen/http/HttpRequest;->disconnect()Lcom/silkimen/http/HttpRequest;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 231
    const-string v1, "Failed to close aborted request"

    invoke-static {p2, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 235
    :cond_0
    :goto_0
    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected setContentType(Lcom/silkimen/http/HttpRequest;)V
    .locals 3

    .line 152
    const-string v0, "json"

    iget-object v1, p0, Lcom/silkimen/cordovahttp/CordovaHttpBase;->serializer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "UTF-8"

    if-eqz v0, :cond_0

    .line 153
    const-string v0, "application/json"

    invoke-virtual {p1, v0, v1}, Lcom/silkimen/http/HttpRequest;->contentType(Ljava/lang/String;Ljava/lang/String;)Lcom/silkimen/http/HttpRequest;

    return-void

    .line 154
    :cond_0
    const-string v0, "utf8"

    iget-object v2, p0, Lcom/silkimen/cordovahttp/CordovaHttpBase;->serializer:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 155
    const-string v0, "text/plain"

    invoke-virtual {p1, v0, v1}, Lcom/silkimen/http/HttpRequest;->contentType(Ljava/lang/String;Ljava/lang/String;)Lcom/silkimen/http/HttpRequest;

    return-void

    .line 156
    :cond_1
    const-string v0, "raw"

    iget-object v1, p0, Lcom/silkimen/cordovahttp/CordovaHttpBase;->serializer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 157
    const-string v0, "application/octet-stream"

    invoke-virtual {p1, v0}, Lcom/silkimen/http/HttpRequest;->contentType(Ljava/lang/String;)Lcom/silkimen/http/HttpRequest;

    return-void

    .line 158
    :cond_2
    const-string p1, "urlencoded"

    iget-object v0, p0, Lcom/silkimen/cordovahttp/CordovaHttpBase;->serializer:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    .line 160
    :cond_3
    const-string p1, "multipart"

    iget-object v0, p0, Lcom/silkimen/cordovahttp/CordovaHttpBase;->serializer:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    return-void
.end method
