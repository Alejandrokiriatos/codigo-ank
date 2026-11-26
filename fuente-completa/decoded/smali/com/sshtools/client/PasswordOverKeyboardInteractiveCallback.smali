.class public Lcom/sshtools/client/PasswordOverKeyboardInteractiveCallback;
.super Ljava/lang/Object;
.source "PasswordOverKeyboardInteractiveCallback.java"

# interfaces
.implements Lcom/sshtools/client/KeyboardInteractiveCallback;


# instance fields
.field auth:Lcom/sshtools/client/PasswordAuthenticator;


# direct methods
.method public constructor <init>(Lcom/sshtools/client/PasswordAuthenticator;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/sshtools/client/PasswordOverKeyboardInteractiveCallback;->auth:Lcom/sshtools/client/PasswordAuthenticator;

    return-void
.end method


# virtual methods
.method public init(Lcom/sshtools/common/ssh/SshConnection;)V
    .locals 0

    return-void
.end method

.method public showPrompts(Ljava/lang/String;Ljava/lang/String;[Lcom/sshtools/client/KeyboardInteractivePrompt;Lcom/sshtools/client/KeyboardInteractivePromptCompletor;)V
    .locals 1

    const/4 p1, 0x0

    .line 57
    :goto_0
    array-length p2, p3

    if-ge p1, p2, :cond_0

    .line 58
    aget-object p2, p3, p1

    iget-object v0, p0, Lcom/sshtools/client/PasswordOverKeyboardInteractiveCallback;->auth:Lcom/sshtools/client/PasswordAuthenticator;

    invoke-virtual {v0}, Lcom/sshtools/client/PasswordAuthenticator;->getPassword()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/sshtools/client/KeyboardInteractivePrompt;->setResponse(Ljava/lang/String;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 60
    :cond_0
    invoke-interface {p4}, Lcom/sshtools/client/KeyboardInteractivePromptCompletor;->complete()V

    return-void
.end method
