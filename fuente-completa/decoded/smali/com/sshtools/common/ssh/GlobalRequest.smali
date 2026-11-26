.class public Lcom/sshtools/common/ssh/GlobalRequest;
.super Lcom/sshtools/common/ssh/AbstractRequestFuture;
.source "GlobalRequest.java"


# instance fields
.field con:Lcom/sshtools/common/ssh/SshConnection;

.field name:Ljava/lang/String;

.field requestdata:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/sshtools/common/ssh/SshConnection;[B)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/sshtools/common/ssh/AbstractRequestFuture;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/sshtools/common/ssh/GlobalRequest;->name:Ljava/lang/String;

    .line 42
    iput-object p2, p0, Lcom/sshtools/common/ssh/GlobalRequest;->con:Lcom/sshtools/common/ssh/SshConnection;

    .line 43
    iput-object p3, p0, Lcom/sshtools/common/ssh/GlobalRequest;->requestdata:[B

    return-void
.end method


# virtual methods
.method public complete(Z)V
    .locals 0

    .line 77
    invoke-virtual {p0, p1}, Lcom/sshtools/common/ssh/GlobalRequest;->done(Z)V

    return-void
.end method

.method public getConnection()Lcom/sshtools/common/ssh/SshConnection;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/sshtools/common/ssh/GlobalRequest;->con:Lcom/sshtools/common/ssh/SshConnection;

    return-object v0
.end method

.method public getData()[B
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/sshtools/common/ssh/GlobalRequest;->requestdata:[B

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/sshtools/common/ssh/GlobalRequest;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setData([B)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/sshtools/common/ssh/GlobalRequest;->requestdata:[B

    return-void
.end method
