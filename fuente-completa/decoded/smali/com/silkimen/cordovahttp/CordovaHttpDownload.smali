.class Lcom/silkimen/cordovahttp/CordovaHttpDownload;
.super Lcom/silkimen/cordovahttp/CordovaHttpBase;
.source "CordovaHttpDownload.java"


# instance fields
.field private filePath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;IIZLcom/silkimen/http/TLSConfiguration;Lcom/silkimen/cordovahttp/CordovaObservableCallbackContext;)V
    .locals 10

    .line 21
    const-string v1, "GET"

    const-string v7, "text"

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/silkimen/cordovahttp/CordovaHttpBase;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;IIZLjava/lang/String;Lcom/silkimen/http/TLSConfiguration;Lcom/silkimen/cordovahttp/CordovaObservableCallbackContext;)V

    .line 22
    iput-object p3, p0, Lcom/silkimen/cordovahttp/CordovaHttpDownload;->filePath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected processResponse(Lcom/silkimen/http/HttpRequest;Lcom/silkimen/cordovahttp/CordovaHttpResponse;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 27
    invoke-virtual {p1}, Lcom/silkimen/http/HttpRequest;->code()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/silkimen/cordovahttp/CordovaHttpResponse;->setStatus(I)V

    .line 28
    invoke-virtual {p1}, Lcom/silkimen/http/HttpRequest;->url()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/silkimen/cordovahttp/CordovaHttpResponse;->setUrl(Ljava/lang/String;)V

    .line 29
    invoke-virtual {p1}, Lcom/silkimen/http/HttpRequest;->headers()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/silkimen/cordovahttp/CordovaHttpResponse;->setHeaders(Ljava/util/Map;)V

    .line 31
    invoke-virtual {p1}, Lcom/silkimen/http/HttpRequest;->code()I

    move-result v0

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/silkimen/http/HttpRequest;->code()I

    move-result v0

    const/16 v1, 0x12c

    if-ge v0, v1, :cond_0

    .line 32
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/net/URI;

    iget-object v2, p0, Lcom/silkimen/cordovahttp/CordovaHttpDownload;->filePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    .line 33
    invoke-static {}, Lorg/apache/cordova/file/FileUtils;->getFilePlugin()Lorg/apache/cordova/file/FileUtils;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/cordova/file/FileUtils;->getEntryForFile(Ljava/io/File;)Lorg/json/JSONObject;

    move-result-object v1

    .line 35
    invoke-virtual {p1, v0}, Lcom/silkimen/http/HttpRequest;->receive(Ljava/io/File;)Lcom/silkimen/http/HttpRequest;

    .line 36
    invoke-virtual {p2, v1}, Lcom/silkimen/cordovahttp/CordovaHttpResponse;->setFileEntry(Lorg/json/JSONObject;)V

    return-void

    .line 38
    :cond_0
    const-string p1, "There was an error downloading the file"

    invoke-virtual {p2, p1}, Lcom/silkimen/cordovahttp/CordovaHttpResponse;->setErrorMessage(Ljava/lang/String;)V

    return-void
.end method
