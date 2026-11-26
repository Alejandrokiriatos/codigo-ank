.class public Lcom/sshtools/client/KeyboardInteractivePrompt;
.super Ljava/lang/Object;
.source "KeyboardInteractivePrompt.java"


# instance fields
.field private echo:Z

.field private prompt:Ljava/lang/String;

.field private response:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/sshtools/client/KeyboardInteractivePrompt;->prompt:Ljava/lang/String;

    .line 41
    iput-boolean p2, p0, Lcom/sshtools/client/KeyboardInteractivePrompt;->echo:Z

    return-void
.end method


# virtual methods
.method public echo()Z
    .locals 1

    .line 60
    iget-boolean v0, p0, Lcom/sshtools/client/KeyboardInteractivePrompt;->echo:Z

    return v0
.end method

.method public getPrompt()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/sshtools/client/KeyboardInteractivePrompt;->prompt:Ljava/lang/String;

    return-object v0
.end method

.method public getResponse()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/sshtools/client/KeyboardInteractivePrompt;->response:Ljava/lang/String;

    return-object v0
.end method

.method public setResponse(Ljava/lang/String;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/sshtools/client/KeyboardInteractivePrompt;->response:Ljava/lang/String;

    return-void
.end method
