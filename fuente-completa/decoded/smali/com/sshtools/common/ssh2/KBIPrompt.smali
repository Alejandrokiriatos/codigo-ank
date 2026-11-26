.class public Lcom/sshtools/common/ssh2/KBIPrompt;
.super Ljava/lang/Object;
.source "KBIPrompt.java"


# instance fields
.field private echo:Z

.field private prompt:Ljava/lang/String;

.field private response:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/sshtools/common/ssh2/KBIPrompt;->prompt:Ljava/lang/String;

    .line 43
    iput-boolean p2, p0, Lcom/sshtools/common/ssh2/KBIPrompt;->echo:Z

    return-void
.end method


# virtual methods
.method public echo()Z
    .locals 1

    .line 62
    iget-boolean v0, p0, Lcom/sshtools/common/ssh2/KBIPrompt;->echo:Z

    return v0
.end method

.method public getPrompt()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/sshtools/common/ssh2/KBIPrompt;->prompt:Ljava/lang/String;

    return-object v0
.end method

.method public getResponse()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/sshtools/common/ssh2/KBIPrompt;->response:Ljava/lang/String;

    return-object v0
.end method

.method public setResponse(Ljava/lang/String;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/sshtools/common/ssh2/KBIPrompt;->response:Ljava/lang/String;

    return-void
.end method
