.class public Lcom/sshtools/common/sshd/config/SshdConfigFileWriter;
.super Ljava/lang/Object;
.source "SshdConfigFileWriter.java"


# instance fields
.field private newline:Ljava/lang/String;

.field private stream:Ljava/io/OutputStream;


# direct methods
.method static bridge synthetic -$$Nest$fgetnewline(Lcom/sshtools/common/sshd/config/SshdConfigFileWriter;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sshtools/common/sshd/config/SshdConfigFileWriter;->newline:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetstream(Lcom/sshtools/common/sshd/config/SshdConfigFileWriter;)Ljava/io/OutputStream;
    .locals 0

    iget-object p0, p0, Lcom/sshtools/common/sshd/config/SshdConfigFileWriter;->stream:Ljava/io/OutputStream;

    return-object p0
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/common/sshd/config/SshdConfigFileWriter;->newline:Ljava/lang/String;

    .line 39
    iput-object p1, p0, Lcom/sshtools/common/sshd/config/SshdConfigFileWriter;->stream:Ljava/io/OutputStream;

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    .line 43
    iput-object p1, p0, Lcom/sshtools/common/sshd/config/SshdConfigFileWriter;->stream:Ljava/io/OutputStream;

    .line 44
    iput-object p2, p0, Lcom/sshtools/common/sshd/config/SshdConfigFileWriter;->newline:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public declared-synchronized write(Lcom/sshtools/common/sshd/config/SshdConfigFile;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x1

    .line 134
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/sshtools/common/sshd/config/SshdConfigFileWriter;->write(Lcom/sshtools/common/sshd/config/SshdConfigFile;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public write(Lcom/sshtools/common/sshd/config/SshdConfigFile;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 48
    iget-object p2, p0, Lcom/sshtools/common/sshd/config/SshdConfigFileWriter;->stream:Ljava/io/OutputStream;

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    .line 56
    new-instance p2, Lcom/sshtools/common/sshd/config/SshdConfigFileWriter$1;

    invoke-direct {p2, p0, p1}, Lcom/sshtools/common/sshd/config/SshdConfigFileWriter$1;-><init>(Lcom/sshtools/common/sshd/config/SshdConfigFileWriter;Lcom/sshtools/common/sshd/config/SshdConfigFile;)V

    invoke-virtual {p1, p2}, Lcom/sshtools/common/sshd/config/SshdConfigFile;->executeRead(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    return-void

    .line 53
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "SshdConfigFile not initiallized."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 49
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Stream not initiallized."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
