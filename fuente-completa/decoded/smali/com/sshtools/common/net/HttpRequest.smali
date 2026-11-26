.class public Lcom/sshtools/common/net/HttpRequest;
.super Lcom/sshtools/common/net/HttpHeader;
.source "HttpRequest.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/sshtools/common/net/HttpHeader;-><init>()V

    return-void
.end method


# virtual methods
.method public setBasicAuthentication(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 46
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/sshtools/common/util/Base64;->encodeBytes([BZ)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Basic "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 45
    const-string p2, "Proxy-Authorization"

    invoke-virtual {p0, p2, p1}, Lcom/sshtools/common/net/HttpRequest;->setHeaderField(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setHeaderBegin(Ljava/lang/String;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/sshtools/common/net/HttpRequest;->begin:Ljava/lang/String;

    return-void
.end method
