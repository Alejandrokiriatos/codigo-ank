.class Lcom/sshtools/client/KeyboardInteractiveAuthenticator$2$1;
.super Ljava/lang/Object;
.source "KeyboardInteractiveAuthenticator.java"

# interfaces
.implements Lcom/sshtools/client/KeyboardInteractivePromptCompletor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sshtools/client/KeyboardInteractiveAuthenticator$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sshtools/client/KeyboardInteractiveAuthenticator$2;


# direct methods
.method constructor <init>(Lcom/sshtools/client/KeyboardInteractiveAuthenticator$2;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/sshtools/client/KeyboardInteractiveAuthenticator$2$1;->this$1:Lcom/sshtools/client/KeyboardInteractiveAuthenticator$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 3

    .line 140
    iget-object v0, p0, Lcom/sshtools/client/KeyboardInteractiveAuthenticator$2$1;->this$1:Lcom/sshtools/client/KeyboardInteractiveAuthenticator$2;

    iget-object v0, v0, Lcom/sshtools/client/KeyboardInteractiveAuthenticator$2;->this$0:Lcom/sshtools/client/KeyboardInteractiveAuthenticator;

    invoke-virtual {v0}, Lcom/sshtools/client/KeyboardInteractiveAuthenticator;->cancel()V

    .line 141
    iget-object v0, p0, Lcom/sshtools/client/KeyboardInteractiveAuthenticator$2$1;->this$1:Lcom/sshtools/client/KeyboardInteractiveAuthenticator$2;

    iget-object v0, v0, Lcom/sshtools/client/KeyboardInteractiveAuthenticator$2;->this$0:Lcom/sshtools/client/KeyboardInteractiveAuthenticator;

    invoke-virtual {v0}, Lcom/sshtools/client/KeyboardInteractiveAuthenticator;->failure()V

    .line 142
    iget-object v0, p0, Lcom/sshtools/client/KeyboardInteractiveAuthenticator$2$1;->this$1:Lcom/sshtools/client/KeyboardInteractiveAuthenticator$2;

    iget-object v0, v0, Lcom/sshtools/client/KeyboardInteractiveAuthenticator$2;->this$0:Lcom/sshtools/client/KeyboardInteractiveAuthenticator;

    iget-object v0, v0, Lcom/sshtools/client/KeyboardInteractiveAuthenticator;->transport:Lcom/sshtools/client/TransportProtocolClient;

    const/16 v1, 0xd

    const-string v2, "User cancelled auth."

    invoke-virtual {v0, v1, v2}, Lcom/sshtools/client/TransportProtocolClient;->disconnect(ILjava/lang/String;)V

    return-void
.end method

.method public complete()V
    .locals 5

    .line 106
    new-instance v0, Lcom/sshtools/common/util/ByteArrayWriter;

    invoke-direct {v0}, Lcom/sshtools/common/util/ByteArrayWriter;-><init>()V

    const/16 v1, 0x3d

    const/4 v2, 0x0

    .line 110
    :try_start_0
    invoke-virtual {v0, v1}, Lcom/sshtools/common/util/ByteArrayWriter;->write(I)V

    .line 111
    iget-object v1, p0, Lcom/sshtools/client/KeyboardInteractiveAuthenticator$2$1;->this$1:Lcom/sshtools/client/KeyboardInteractiveAuthenticator$2;

    iget-object v1, v1, Lcom/sshtools/client/KeyboardInteractiveAuthenticator$2;->val$prompts:[Lcom/sshtools/client/KeyboardInteractivePrompt;

    array-length v1, v1

    invoke-virtual {v0, v1}, Lcom/sshtools/common/util/ByteArrayWriter;->writeInt(I)V

    move v1, v2

    .line 113
    :goto_0
    iget-object v3, p0, Lcom/sshtools/client/KeyboardInteractiveAuthenticator$2$1;->this$1:Lcom/sshtools/client/KeyboardInteractiveAuthenticator$2;

    iget-object v3, v3, Lcom/sshtools/client/KeyboardInteractiveAuthenticator$2;->val$prompts:[Lcom/sshtools/client/KeyboardInteractivePrompt;

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 114
    iget-object v3, p0, Lcom/sshtools/client/KeyboardInteractiveAuthenticator$2$1;->this$1:Lcom/sshtools/client/KeyboardInteractiveAuthenticator$2;

    iget-object v3, v3, Lcom/sshtools/client/KeyboardInteractiveAuthenticator$2;->val$prompts:[Lcom/sshtools/client/KeyboardInteractivePrompt;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/sshtools/client/KeyboardInteractivePrompt;->getResponse()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sshtools/common/util/ByteArrayWriter;->writeString(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 117
    :cond_0
    iget-object v1, p0, Lcom/sshtools/client/KeyboardInteractiveAuthenticator$2$1;->this$1:Lcom/sshtools/client/KeyboardInteractiveAuthenticator$2;

    iget-object v1, v1, Lcom/sshtools/client/KeyboardInteractiveAuthenticator$2;->this$0:Lcom/sshtools/client/KeyboardInteractiveAuthenticator;

    iget-object v1, v1, Lcom/sshtools/client/KeyboardInteractiveAuthenticator;->transport:Lcom/sshtools/client/TransportProtocolClient;

    new-instance v3, Lcom/sshtools/client/KeyboardInteractiveAuthenticator$2$1$1;

    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayWriter;->toByteArray()[B

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/sshtools/client/KeyboardInteractiveAuthenticator$2$1$1;-><init>(Lcom/sshtools/client/KeyboardInteractiveAuthenticator$2$1;[B)V

    invoke-virtual {v1, v3}, Lcom/sshtools/client/TransportProtocolClient;->postMessage(Lcom/sshtools/common/sshd/SshMessage;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    :try_start_1
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 127
    :try_start_2
    const-string v3, "Error during showPrompts"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v1, v2}, Lcom/sshtools/common/logger/Log;->error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 128
    iget-object v1, p0, Lcom/sshtools/client/KeyboardInteractiveAuthenticator$2$1;->this$1:Lcom/sshtools/client/KeyboardInteractiveAuthenticator$2;

    iget-object v1, v1, Lcom/sshtools/client/KeyboardInteractiveAuthenticator$2;->this$0:Lcom/sshtools/client/KeyboardInteractiveAuthenticator;

    invoke-virtual {v1}, Lcom/sshtools/client/KeyboardInteractiveAuthenticator;->failure()V

    .line 129
    iget-object v1, p0, Lcom/sshtools/client/KeyboardInteractiveAuthenticator$2$1;->this$1:Lcom/sshtools/client/KeyboardInteractiveAuthenticator$2;

    iget-object v1, v1, Lcom/sshtools/client/KeyboardInteractiveAuthenticator$2;->this$0:Lcom/sshtools/client/KeyboardInteractiveAuthenticator;

    iget-object v1, v1, Lcom/sshtools/client/KeyboardInteractiveAuthenticator;->transport:Lcom/sshtools/client/TransportProtocolClient;

    const-string v2, "User cancelled auth."

    const/16 v3, 0xd

    invoke-virtual {v1, v3, v2}, Lcom/sshtools/client/TransportProtocolClient;->disconnect(ILjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 132
    :try_start_3
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    return-void

    :goto_1
    :try_start_4
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 135
    :catch_2
    throw v1
.end method
