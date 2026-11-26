.class Lcom/sshtools/common/util/IOStreamConnector$IOStreamConnectorThread;
.super Ljava/lang/Object;
.source "IOStreamConnector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sshtools/common/util/IOStreamConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IOStreamConnectorThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sshtools/common/util/IOStreamConnector;


# direct methods
.method constructor <init>(Lcom/sshtools/common/util/IOStreamConnector;)V
    .locals 0

    .line 173
    iput-object p1, p0, Lcom/sshtools/common/util/IOStreamConnector$IOStreamConnectorThread;->this$0:Lcom/sshtools/common/util/IOStreamConnector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 177
    iget-object v0, p0, Lcom/sshtools/common/util/IOStreamConnector$IOStreamConnectorThread;->this$0:Lcom/sshtools/common/util/IOStreamConnector;

    iget v0, v0, Lcom/sshtools/common/util/IOStreamConnector;->BUFFER_SIZE:I

    new-array v1, v0, [B

    .line 179
    iget-object v2, p0, Lcom/sshtools/common/util/IOStreamConnector$IOStreamConnectorThread;->this$0:Lcom/sshtools/common/util/IOStreamConnector;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/sshtools/common/util/IOStreamConnector;->running:Z

    .line 182
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/sshtools/common/util/IOStreamConnector$IOStreamConnectorThread;->this$0:Lcom/sshtools/common/util/IOStreamConnector;

    iget-boolean v2, v2, Lcom/sshtools/common/util/IOStreamConnector;->running:Z

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    .line 185
    :try_start_0
    iget-object v2, p0, Lcom/sshtools/common/util/IOStreamConnector$IOStreamConnectorThread;->this$0:Lcom/sshtools/common/util/IOStreamConnector;

    invoke-static {v2}, Lcom/sshtools/common/util/IOStreamConnector;->-$$Nest$fgetin(Lcom/sshtools/common/util/IOStreamConnector;)Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v2, v1, v4, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    if-lez v2, :cond_1

    .line 190
    iget-object v5, p0, Lcom/sshtools/common/util/IOStreamConnector$IOStreamConnectorThread;->this$0:Lcom/sshtools/common/util/IOStreamConnector;

    invoke-static {v5}, Lcom/sshtools/common/util/IOStreamConnector;->-$$Nest$fgetout(Lcom/sshtools/common/util/IOStreamConnector;)Ljava/io/OutputStream;

    move-result-object v5

    invoke-virtual {v5, v1, v4, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 193
    iget-object v5, p0, Lcom/sshtools/common/util/IOStreamConnector$IOStreamConnectorThread;->this$0:Lcom/sshtools/common/util/IOStreamConnector;

    invoke-static {v5}, Lcom/sshtools/common/util/IOStreamConnector;->-$$Nest$fgetbytes(Lcom/sshtools/common/util/IOStreamConnector;)J

    move-result-wide v6

    int-to-long v8, v2

    add-long/2addr v6, v8

    invoke-static {v5, v6, v7}, Lcom/sshtools/common/util/IOStreamConnector;->-$$Nest$fputbytes(Lcom/sshtools/common/util/IOStreamConnector;J)V

    .line 196
    iget-object v5, p0, Lcom/sshtools/common/util/IOStreamConnector$IOStreamConnectorThread;->this$0:Lcom/sshtools/common/util/IOStreamConnector;

    invoke-static {v5}, Lcom/sshtools/common/util/IOStreamConnector;->-$$Nest$fgetout(Lcom/sshtools/common/util/IOStreamConnector;)Ljava/io/OutputStream;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V

    move v5, v4

    .line 199
    :goto_1
    iget-object v6, p0, Lcom/sshtools/common/util/IOStreamConnector$IOStreamConnectorThread;->this$0:Lcom/sshtools/common/util/IOStreamConnector;

    iget-object v6, v6, Lcom/sshtools/common/util/IOStreamConnector;->listenerList:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    if-ge v5, v6, :cond_0

    .line 200
    iget-object v6, p0, Lcom/sshtools/common/util/IOStreamConnector$IOStreamConnectorThread;->this$0:Lcom/sshtools/common/util/IOStreamConnector;

    iget-object v6, v6, Lcom/sshtools/common/util/IOStreamConnector;->listenerList:Ljava/util/Vector;

    invoke-virtual {v6, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sshtools/common/util/IOStreamConnector$IOStreamConnectorListener;

    .line 201
    invoke-interface {v6, v1, v2}, Lcom/sshtools/common/util/IOStreamConnector$IOStreamConnectorListener;->dataTransfered([BI)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    if-gez v2, :cond_0

    .line 206
    iget-object v2, p0, Lcom/sshtools/common/util/IOStreamConnector$IOStreamConnectorThread;->this$0:Lcom/sshtools/common/util/IOStreamConnector;

    iput-boolean v4, v2, Lcom/sshtools/common/util/IOStreamConnector;->running:Z
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    .line 217
    iget-object v5, p0, Lcom/sshtools/common/util/IOStreamConnector$IOStreamConnectorThread;->this$0:Lcom/sshtools/common/util/IOStreamConnector;

    iget-boolean v5, v5, Lcom/sshtools/common/util/IOStreamConnector;->running:Z

    if-eqz v5, :cond_0

    .line 218
    iget-object v5, p0, Lcom/sshtools/common/util/IOStreamConnector$IOStreamConnectorThread;->this$0:Lcom/sshtools/common/util/IOStreamConnector;

    iput-object v2, v5, Lcom/sshtools/common/util/IOStreamConnector;->lastError:Ljava/lang/Throwable;

    .line 219
    iget-object v2, p0, Lcom/sshtools/common/util/IOStreamConnector$IOStreamConnectorThread;->this$0:Lcom/sshtools/common/util/IOStreamConnector;

    iput-boolean v4, v2, Lcom/sshtools/common/util/IOStreamConnector;->running:Z

    goto :goto_0

    .line 211
    :catch_0
    :goto_2
    iget-object v2, p0, Lcom/sshtools/common/util/IOStreamConnector$IOStreamConnectorThread;->this$0:Lcom/sshtools/common/util/IOStreamConnector;

    iget-object v2, v2, Lcom/sshtools/common/util/IOStreamConnector;->listenerList:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v4, v2, :cond_0

    .line 212
    iget-object v2, p0, Lcom/sshtools/common/util/IOStreamConnector$IOStreamConnectorThread;->this$0:Lcom/sshtools/common/util/IOStreamConnector;

    iget-object v2, v2, Lcom/sshtools/common/util/IOStreamConnector;->listenerList:Ljava/util/Vector;

    invoke-virtual {v2, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sshtools/common/util/IOStreamConnector$IOStreamConnectorListener;

    iget-object v5, p0, Lcom/sshtools/common/util/IOStreamConnector$IOStreamConnectorThread;->this$0:Lcom/sshtools/common/util/IOStreamConnector;

    .line 213
    invoke-interface {v2, v5}, Lcom/sshtools/common/util/IOStreamConnector$IOStreamConnectorListener;->connectorTimeout(Lcom/sshtools/common/util/IOStreamConnector;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 225
    :cond_2
    iget-object v0, p0, Lcom/sshtools/common/util/IOStreamConnector$IOStreamConnectorThread;->this$0:Lcom/sshtools/common/util/IOStreamConnector;

    invoke-static {v0}, Lcom/sshtools/common/util/IOStreamConnector;->-$$Nest$fgetcloseInput(Lcom/sshtools/common/util/IOStreamConnector;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 227
    :try_start_1
    iget-object v0, p0, Lcom/sshtools/common/util/IOStreamConnector$IOStreamConnectorThread;->this$0:Lcom/sshtools/common/util/IOStreamConnector;

    invoke-static {v0}, Lcom/sshtools/common/util/IOStreamConnector;->-$$Nest$fgetin(Lcom/sshtools/common/util/IOStreamConnector;)Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 232
    :catch_1
    :cond_3
    iget-object v0, p0, Lcom/sshtools/common/util/IOStreamConnector$IOStreamConnectorThread;->this$0:Lcom/sshtools/common/util/IOStreamConnector;

    invoke-static {v0}, Lcom/sshtools/common/util/IOStreamConnector;->-$$Nest$fgetcloseOutput(Lcom/sshtools/common/util/IOStreamConnector;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 234
    :try_start_2
    iget-object v0, p0, Lcom/sshtools/common/util/IOStreamConnector$IOStreamConnectorThread;->this$0:Lcom/sshtools/common/util/IOStreamConnector;

    invoke-static {v0}, Lcom/sshtools/common/util/IOStreamConnector;->-$$Nest$fgetout(Lcom/sshtools/common/util/IOStreamConnector;)Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 239
    :catch_2
    :cond_4
    iget-object v0, p0, Lcom/sshtools/common/util/IOStreamConnector$IOStreamConnectorThread;->this$0:Lcom/sshtools/common/util/IOStreamConnector;

    iput-boolean v3, v0, Lcom/sshtools/common/util/IOStreamConnector;->closed:Z

    .line 241
    :goto_3
    iget-object v0, p0, Lcom/sshtools/common/util/IOStreamConnector$IOStreamConnectorThread;->this$0:Lcom/sshtools/common/util/IOStreamConnector;

    iget-object v0, v0, Lcom/sshtools/common/util/IOStreamConnector;->listenerList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v4, v0, :cond_5

    .line 242
    iget-object v0, p0, Lcom/sshtools/common/util/IOStreamConnector$IOStreamConnectorThread;->this$0:Lcom/sshtools/common/util/IOStreamConnector;

    iget-object v0, v0, Lcom/sshtools/common/util/IOStreamConnector;->listenerList:Ljava/util/Vector;

    invoke-virtual {v0, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sshtools/common/util/IOStreamConnector$IOStreamConnectorListener;

    iget-object v1, p0, Lcom/sshtools/common/util/IOStreamConnector$IOStreamConnectorThread;->this$0:Lcom/sshtools/common/util/IOStreamConnector;

    .line 243
    invoke-interface {v0, v1}, Lcom/sshtools/common/util/IOStreamConnector$IOStreamConnectorListener;->connectorClosed(Lcom/sshtools/common/util/IOStreamConnector;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 246
    :cond_5
    iget-object v0, p0, Lcom/sshtools/common/util/IOStreamConnector$IOStreamConnectorThread;->this$0:Lcom/sshtools/common/util/IOStreamConnector;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sshtools/common/util/IOStreamConnector;->-$$Nest$fputthread(Lcom/sshtools/common/util/IOStreamConnector;Ljava/lang/Thread;)V

    return-void
.end method
