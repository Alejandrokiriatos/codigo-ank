.class Lcom/sshtools/client/KeyboardInteractiveAuthenticator$2;
.super Ljava/lang/Object;
.source "KeyboardInteractiveAuthenticator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sshtools/client/KeyboardInteractiveAuthenticator;->processMessage(Lcom/sshtools/common/util/ByteArrayReader;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sshtools/client/KeyboardInteractiveAuthenticator;

.field final synthetic val$instruction:Ljava/lang/String;

.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$prompts:[Lcom/sshtools/client/KeyboardInteractivePrompt;


# direct methods
.method constructor <init>(Lcom/sshtools/client/KeyboardInteractiveAuthenticator;Ljava/lang/String;Ljava/lang/String;[Lcom/sshtools/client/KeyboardInteractivePrompt;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 100
    iput-object p1, p0, Lcom/sshtools/client/KeyboardInteractiveAuthenticator$2;->this$0:Lcom/sshtools/client/KeyboardInteractiveAuthenticator;

    iput-object p2, p0, Lcom/sshtools/client/KeyboardInteractiveAuthenticator$2;->val$name:Ljava/lang/String;

    iput-object p3, p0, Lcom/sshtools/client/KeyboardInteractiveAuthenticator$2;->val$instruction:Ljava/lang/String;

    iput-object p4, p0, Lcom/sshtools/client/KeyboardInteractiveAuthenticator$2;->val$prompts:[Lcom/sshtools/client/KeyboardInteractivePrompt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 102
    iget-object v0, p0, Lcom/sshtools/client/KeyboardInteractiveAuthenticator$2;->this$0:Lcom/sshtools/client/KeyboardInteractiveAuthenticator;

    iget-object v0, v0, Lcom/sshtools/client/KeyboardInteractiveAuthenticator;->callback:Lcom/sshtools/client/KeyboardInteractiveCallback;

    iget-object v1, p0, Lcom/sshtools/client/KeyboardInteractiveAuthenticator$2;->val$name:Ljava/lang/String;

    iget-object v2, p0, Lcom/sshtools/client/KeyboardInteractiveAuthenticator$2;->val$instruction:Ljava/lang/String;

    iget-object v3, p0, Lcom/sshtools/client/KeyboardInteractiveAuthenticator$2;->val$prompts:[Lcom/sshtools/client/KeyboardInteractivePrompt;

    new-instance v4, Lcom/sshtools/client/KeyboardInteractiveAuthenticator$2$1;

    invoke-direct {v4, p0}, Lcom/sshtools/client/KeyboardInteractiveAuthenticator$2$1;-><init>(Lcom/sshtools/client/KeyboardInteractiveAuthenticator$2;)V

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/sshtools/client/KeyboardInteractiveCallback;->showPrompts(Ljava/lang/String;Ljava/lang/String;[Lcom/sshtools/client/KeyboardInteractivePrompt;Lcom/sshtools/client/KeyboardInteractivePromptCompletor;)V

    return-void
.end method
