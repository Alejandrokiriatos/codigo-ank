.class Lcom/sshtools/common/sshd/config/SshdConfigFileWriter$1;
.super Ljava/lang/Object;
.source "SshdConfigFileWriter.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sshtools/common/sshd/config/SshdConfigFileWriter;->write(Lcom/sshtools/common/sshd/config/SshdConfigFile;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sshtools/common/sshd/config/SshdConfigFileWriter;

.field final synthetic val$sshdConfigFile:Lcom/sshtools/common/sshd/config/SshdConfigFile;


# direct methods
.method constructor <init>(Lcom/sshtools/common/sshd/config/SshdConfigFileWriter;Lcom/sshtools/common/sshd/config/SshdConfigFile;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 56
    iput-object p1, p0, Lcom/sshtools/common/sshd/config/SshdConfigFileWriter$1;->this$0:Lcom/sshtools/common/sshd/config/SshdConfigFileWriter;

    iput-object p2, p0, Lcom/sshtools/common/sshd/config/SshdConfigFileWriter$1;->val$sshdConfigFile:Lcom/sshtools/common/sshd/config/SshdConfigFile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 56
    invoke-virtual {p0}, Lcom/sshtools/common/sshd/config/SshdConfigFileWriter$1;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 60
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    iget-object v2, p0, Lcom/sshtools/common/sshd/config/SshdConfigFileWriter$1;->this$0:Lcom/sshtools/common/sshd/config/SshdConfigFileWriter;

    invoke-static {v2}, Lcom/sshtools/common/sshd/config/SshdConfigFileWriter;->-$$Nest$fgetstream(Lcom/sshtools/common/sshd/config/SshdConfigFileWriter;)Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 64
    :try_start_0
    iget-object v1, p0, Lcom/sshtools/common/sshd/config/SshdConfigFileWriter$1;->val$sshdConfigFile:Lcom/sshtools/common/sshd/config/SshdConfigFile;

    invoke-virtual {v1}, Lcom/sshtools/common/sshd/config/SshdConfigFile;->getGlobalConfiguration()Lcom/sshtools/common/sshd/config/GlobalConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sshtools/common/sshd/config/GlobalConfiguration;->getKeyEntries()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sshtools/common/sshd/config/SshdConfigFileEntry;

    :goto_1
    if-eqz v2, :cond_0

    .line 67
    iget-object v2, p0, Lcom/sshtools/common/sshd/config/SshdConfigFileWriter$1;->this$0:Lcom/sshtools/common/sshd/config/SshdConfigFileWriter;

    invoke-static {v2}, Lcom/sshtools/common/sshd/config/SshdConfigFileWriter;->-$$Nest$fgetnewline(Lcom/sshtools/common/sshd/config/SshdConfigFileWriter;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 70
    :cond_0
    invoke-virtual {v3}, Lcom/sshtools/common/sshd/config/SshdConfigFileEntry;->getFormattedLine()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 71
    invoke-virtual {v3}, Lcom/sshtools/common/sshd/config/SshdConfigFileEntry;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 72
    invoke-virtual {v3}, Lcom/sshtools/common/sshd/config/SshdConfigFileEntry;->getNext()Lcom/sshtools/common/sshd/config/SshdConfigFileEntry;

    move-result-object v3

    move v2, v4

    goto :goto_1

    :cond_1
    move v2, v4

    goto :goto_0

    .line 79
    :cond_2
    iget-object v1, p0, Lcom/sshtools/common/sshd/config/SshdConfigFileWriter$1;->val$sshdConfigFile:Lcom/sshtools/common/sshd/config/SshdConfigFile;

    invoke-virtual {v1}, Lcom/sshtools/common/sshd/config/SshdConfigFile;->getMatchEntriesIterator()Ljava/util/Iterator;

    move-result-object v1

    .line 81
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 83
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sshtools/common/sshd/config/MatchEntry;

    .line 85
    invoke-virtual {v3}, Lcom/sshtools/common/sshd/config/MatchEntry;->matchEntryCriteriaAsString()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_8

    .line 86
    invoke-virtual {v3}, Lcom/sshtools/common/sshd/config/MatchEntry;->matchEntryCriteriaAsString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_8

    .line 90
    invoke-virtual {v3}, Lcom/sshtools/common/sshd/config/MatchEntry;->getMatchCriteriaCommentEntriesIterator()Ljava/util/Iterator;

    move-result-object v5

    .line 91
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 92
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sshtools/common/sshd/config/CommentEntry;

    if-eqz v2, :cond_3

    .line 94
    iget-object v2, p0, Lcom/sshtools/common/sshd/config/SshdConfigFileWriter$1;->this$0:Lcom/sshtools/common/sshd/config/SshdConfigFileWriter;

    invoke-static {v2}, Lcom/sshtools/common/sshd/config/SshdConfigFileWriter;->-$$Nest$fgetnewline(Lcom/sshtools/common/sshd/config/SshdConfigFileWriter;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 96
    :cond_3
    invoke-virtual {v6}, Lcom/sshtools/common/sshd/config/CommentEntry;->getFormattedLine()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    move v2, v4

    goto :goto_3

    :cond_4
    if-eqz v2, :cond_5

    .line 102
    iget-object v2, p0, Lcom/sshtools/common/sshd/config/SshdConfigFileWriter$1;->this$0:Lcom/sshtools/common/sshd/config/SshdConfigFileWriter;

    invoke-static {v2}, Lcom/sshtools/common/sshd/config/SshdConfigFileWriter;->-$$Nest$fgetnewline(Lcom/sshtools/common/sshd/config/SshdConfigFileWriter;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 104
    :cond_5
    invoke-virtual {v3}, Lcom/sshtools/common/sshd/config/MatchEntry;->getFormattedLine()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 108
    invoke-virtual {v3}, Lcom/sshtools/common/sshd/config/MatchEntry;->getKeyEntries()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sshtools/common/sshd/config/SshdConfigFileEntry;

    .line 112
    :goto_4
    iget-object v5, p0, Lcom/sshtools/common/sshd/config/SshdConfigFileWriter$1;->this$0:Lcom/sshtools/common/sshd/config/SshdConfigFileWriter;

    invoke-static {v5}, Lcom/sshtools/common/sshd/config/SshdConfigFileWriter;->-$$Nest$fgetnewline(Lcom/sshtools/common/sshd/config/SshdConfigFileWriter;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 114
    invoke-virtual {v3}, Lcom/sshtools/common/sshd/config/SshdConfigFileEntry;->getFormattedLine()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 115
    invoke-virtual {v3}, Lcom/sshtools/common/sshd/config/SshdConfigFileEntry;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 116
    invoke-virtual {v3}, Lcom/sshtools/common/sshd/config/SshdConfigFileEntry;->getNext()Lcom/sshtools/common/sshd/config/SshdConfigFileEntry;

    move-result-object v3

    goto :goto_4

    :cond_7
    move v2, v4

    goto/16 :goto_2

    .line 87
    :cond_8
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Match entry criteria string cannot be empty."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 124
    :cond_9
    iget-object v1, p0, Lcom/sshtools/common/sshd/config/SshdConfigFileWriter$1;->this$0:Lcom/sshtools/common/sshd/config/SshdConfigFileWriter;

    invoke-static {v1}, Lcom/sshtools/common/sshd/config/SshdConfigFileWriter;->-$$Nest$fgetnewline(Lcom/sshtools/common/sshd/config/SshdConfigFileWriter;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v1

    .line 60
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5
    throw v1
.end method
