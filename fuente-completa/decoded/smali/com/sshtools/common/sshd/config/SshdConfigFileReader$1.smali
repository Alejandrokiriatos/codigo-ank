.class Lcom/sshtools/common/sshd/config/SshdConfigFileReader$1;
.super Ljava/lang/Object;
.source "SshdConfigFileReader.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sshtools/common/sshd/config/SshdConfigFileReader;->readToBuilder()Lcom/sshtools/common/sshd/config/SshdConfigFile$SshdConfigFileBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/sshtools/common/sshd/config/SshdConfigFile$SshdConfigFileBuilder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sshtools/common/sshd/config/SshdConfigFileReader;

.field final synthetic val$sshdConfigFileBuilder:Lcom/sshtools/common/sshd/config/SshdConfigFile$SshdConfigFileBuilder;


# direct methods
.method constructor <init>(Lcom/sshtools/common/sshd/config/SshdConfigFileReader;Lcom/sshtools/common/sshd/config/SshdConfigFile$SshdConfigFileBuilder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 147
    iput-object p1, p0, Lcom/sshtools/common/sshd/config/SshdConfigFileReader$1;->this$0:Lcom/sshtools/common/sshd/config/SshdConfigFileReader;

    iput-object p2, p0, Lcom/sshtools/common/sshd/config/SshdConfigFileReader$1;->val$sshdConfigFileBuilder:Lcom/sshtools/common/sshd/config/SshdConfigFile$SshdConfigFileBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private isKnownDirective(Ljava/lang/String;)Z
    .locals 2

    .line 215
    const-string v0, "\\s"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 216
    sget-object v0, Lcom/sshtools/common/sshd/config/SshdConfigFileReader;->DIRECTIVES:Ljava/util/Set;

    const/4 v1, 0x0

    aget-object p1, p1, v1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public call()Lcom/sshtools/common/sshd/config/SshdConfigFile$SshdConfigFileBuilder;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 151
    const-string v0, "\\s"

    iget-object v1, p0, Lcom/sshtools/common/sshd/config/SshdConfigFileReader$1;->val$sshdConfigFileBuilder:Lcom/sshtools/common/sshd/config/SshdConfigFile$SshdConfigFileBuilder;

    .line 153
    iget-object v2, p0, Lcom/sshtools/common/sshd/config/SshdConfigFileReader$1;->this$0:Lcom/sshtools/common/sshd/config/SshdConfigFileReader;

    invoke-static {v2}, Lcom/sshtools/common/sshd/config/SshdConfigFileReader;->-$$Nest$fgetstream(Lcom/sshtools/common/sshd/config/SshdConfigFileReader;)Ljava/io/InputStream;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 157
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    iget-object v4, p0, Lcom/sshtools/common/sshd/config/SshdConfigFileReader$1;->this$0:Lcom/sshtools/common/sshd/config/SshdConfigFileReader;

    invoke-static {v4}, Lcom/sshtools/common/sshd/config/SshdConfigFileReader;->-$$Nest$fgetstream(Lcom/sshtools/common/sshd/config/SshdConfigFileReader;)Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const/4 v3, 0x0

    move v4, v3

    .line 161
    :goto_0
    :try_start_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 163
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 164
    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 165
    invoke-interface {v1}, Lcom/sshtools/common/sshd/config/EntryBuilder;->cursor()Lcom/sshtools/common/sshd/config/SshdConfigFileCursor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sshtools/common/sshd/config/SshdConfigFileCursor;->get()Lcom/sshtools/common/sshd/config/Entry;

    move-result-object v5

    new-instance v6, Lcom/sshtools/common/sshd/config/BlankEntry;

    invoke-direct {v6}, Lcom/sshtools/common/sshd/config/BlankEntry;-><init>()V

    invoke-virtual {v5, v6}, Lcom/sshtools/common/sshd/config/Entry;->appendEntry(Lcom/sshtools/common/sshd/config/SshdConfigFileEntry;)V

    goto :goto_0

    .line 170
    :cond_0
    const-string v6, "#"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_2

    .line 171
    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 172
    invoke-direct {p0, v5}, Lcom/sshtools/common/sshd/config/SshdConfigFileReader$1;->isKnownDirective(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 173
    invoke-interface {v1}, Lcom/sshtools/common/sshd/config/EntryBuilder;->cursor()Lcom/sshtools/common/sshd/config/SshdConfigFileCursor;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sshtools/common/sshd/config/SshdConfigFileCursor;->get()Lcom/sshtools/common/sshd/config/Entry;

    move-result-object v6

    new-instance v7, Lcom/sshtools/common/sshd/config/CommentEntry;

    invoke-direct {v7, v5}, Lcom/sshtools/common/sshd/config/CommentEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Lcom/sshtools/common/sshd/config/Entry;->appendEntry(Lcom/sshtools/common/sshd/config/SshdConfigFileEntry;)V

    goto :goto_0

    :cond_1
    move v6, v7

    goto :goto_1

    :cond_2
    move v6, v3

    .line 181
    :goto_1
    invoke-virtual {v5, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 183
    array-length v9, v8

    if-eqz v9, :cond_6

    array-length v9, v8

    if-ne v9, v7, :cond_3

    goto :goto_2

    .line 188
    :cond_3
    aget-object v5, v8, v3

    .line 189
    const-string v9, " "

    array-length v10, v8

    invoke-static {v8, v7, v10}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    invoke-static {v9, v8}, Lcom/sshtools/common/util/Utils;->csv(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 190
    const-string v9, "match"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 192
    invoke-interface {v1}, Lcom/sshtools/common/sshd/config/EntryBuilder;->cursor()Lcom/sshtools/common/sshd/config/SshdConfigFileCursor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sshtools/common/sshd/config/SshdConfigFileCursor;->get()Lcom/sshtools/common/sshd/config/Entry;

    move-result-object v4

    instance-of v4, v4, Lcom/sshtools/common/sshd/config/MatchEntry;

    if-eqz v4, :cond_4

    .line 194
    invoke-interface {v1}, Lcom/sshtools/common/sshd/config/EntryBuilder;->end()Ljava/lang/Object;

    .line 197
    :cond_4
    invoke-virtual {v8, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 199
    iget-object v4, p0, Lcom/sshtools/common/sshd/config/SshdConfigFileReader$1;->val$sshdConfigFileBuilder:Lcom/sshtools/common/sshd/config/SshdConfigFile$SshdConfigFileBuilder;

    .line 200
    invoke-virtual {v4, v6}, Lcom/sshtools/common/sshd/config/SshdConfigFile$SshdConfigFileBuilder;->matchEntry(Z)Lcom/sshtools/common/sshd/config/MatchEntry$MatchEntryBuilder;

    move-result-object v4

    .line 201
    invoke-virtual {v4, v1}, Lcom/sshtools/common/sshd/config/MatchEntry$MatchEntryBuilder;->parse([Ljava/lang/String;)Lcom/sshtools/common/sshd/config/MatchEntry$MatchEntryBuilder;

    move-result-object v1

    move v4, v7

    goto/16 :goto_0

    .line 207
    :cond_5
    invoke-interface {v1}, Lcom/sshtools/common/sshd/config/EntryBuilder;->cursor()Lcom/sshtools/common/sshd/config/SshdConfigFileCursor;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sshtools/common/sshd/config/SshdConfigFileCursor;->get()Lcom/sshtools/common/sshd/config/Entry;

    move-result-object v7

    new-instance v9, Lcom/sshtools/common/sshd/config/SshdConfigKeyValueEntry;

    invoke-direct {v9, v5, v8, v6, v4}, Lcom/sshtools/common/sshd/config/SshdConfigKeyValueEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    invoke-virtual {v7, v9}, Lcom/sshtools/common/sshd/config/Entry;->appendEntry(Lcom/sshtools/common/sshd/config/SshdConfigFileEntry;)V

    goto/16 :goto_0

    .line 184
    :cond_6
    :goto_2
    iget-object v6, p0, Lcom/sshtools/common/sshd/config/SshdConfigFileReader$1;->this$0:Lcom/sshtools/common/sshd/config/SshdConfigFileReader;

    invoke-virtual {v6, v5}, Lcom/sshtools/common/sshd/config/SshdConfigFileReader;->onInvalidEntry(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 209
    :cond_7
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 211
    iget-object v0, p0, Lcom/sshtools/common/sshd/config/SshdConfigFileReader$1;->val$sshdConfigFileBuilder:Lcom/sshtools/common/sshd/config/SshdConfigFile$SshdConfigFileBuilder;

    return-object v0

    :catchall_0
    move-exception v0

    .line 157
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v1

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw v0

    .line 154
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Stream not initiallized."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 147
    invoke-virtual {p0}, Lcom/sshtools/common/sshd/config/SshdConfigFileReader$1;->call()Lcom/sshtools/common/sshd/config/SshdConfigFile$SshdConfigFileBuilder;

    move-result-object v0

    return-object v0
.end method
