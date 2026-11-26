.class Lcom/sshtools/client/SshClient$InteractiveOutputListener;
.super Ljava/lang/Object;
.source "SshClient.java"

# interfaces
.implements Lcom/sshtools/common/ssh/ChannelEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sshtools/client/SshClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InteractiveOutputListener"
.end annotation


# instance fields
.field output:Ljava/lang/StringBuffer;

.field final synthetic this$0:Lcom/sshtools/client/SshClient;


# direct methods
.method constructor <init>(Lcom/sshtools/client/SshClient;Ljava/lang/StringBuffer;)V
    .locals 0

    .line 855
    iput-object p1, p0, Lcom/sshtools/client/SshClient$InteractiveOutputListener;->this$0:Lcom/sshtools/client/SshClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 856
    iput-object p2, p0, Lcom/sshtools/client/SshClient$InteractiveOutputListener;->output:Ljava/lang/StringBuffer;

    return-void
.end method

.method private declared-synchronized recordOutput(Ljava/nio/ByteBuffer;)V
    .locals 3

    monitor-enter p0

    .line 870
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    new-array v0, v0, [B

    .line 871
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 873
    :try_start_1
    iget-object p1, p0, Lcom/sshtools/client/SshClient$InteractiveOutputListener;->output:Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 877
    monitor-exit p0

    return-void

    :catch_0
    move-exception p1

    .line 875
    :try_start_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method


# virtual methods
.method public onChannelDataIn(Lcom/sshtools/common/ssh/Channel;Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 861
    invoke-direct {p0, p2}, Lcom/sshtools/client/SshClient$InteractiveOutputListener;->recordOutput(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public onChannelExtendedData(Lcom/sshtools/common/ssh/Channel;Ljava/nio/ByteBuffer;I)V
    .locals 0

    .line 866
    invoke-direct {p0, p2}, Lcom/sshtools/client/SshClient$InteractiveOutputListener;->recordOutput(Ljava/nio/ByteBuffer;)V

    return-void
.end method
