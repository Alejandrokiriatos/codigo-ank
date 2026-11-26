.class public Lcom/sshtools/common/logger/FileLoggingContext;
.super Lcom/sshtools/common/logger/AbstractLoggingContext;
.source "FileLoggingContext.java"


# instance fields
.field currentFile:Ljava/io/RandomAccessFile;

.field currentOut:Ljava/io/OutputStream;

.field currentWriter:Ljava/io/BufferedWriter;

.field logFile:Ljava/io/File;

.field logging:Z

.field maxFiles:I

.field maxSize:J


# direct methods
.method static bridge synthetic -$$Nest$mcloseLog(Lcom/sshtools/common/logger/FileLoggingContext;)V
    .locals 0

    invoke-direct {p0}, Lcom/sshtools/common/logger/FileLoggingContext;->closeLog()V

    return-void
.end method

.method public constructor <init>(Lcom/sshtools/common/logger/Log$Level;Ljava/io/File;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v3, 0xa

    const-wide/32 v4, 0x1400000

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 49
    invoke-direct/range {v0 .. v5}, Lcom/sshtools/common/logger/FileLoggingContext;-><init>(Lcom/sshtools/common/logger/Log$Level;Ljava/io/File;IJ)V

    return-void
.end method

.method public constructor <init>(Lcom/sshtools/common/logger/Log$Level;Ljava/io/File;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 53
    invoke-direct {p0, p1}, Lcom/sshtools/common/logger/AbstractLoggingContext;-><init>(Lcom/sshtools/common/logger/Log$Level;)V

    const/4 p1, 0x0

    .line 39
    iput-object p1, p0, Lcom/sshtools/common/logger/FileLoggingContext;->currentWriter:Ljava/io/BufferedWriter;

    .line 40
    iput-object p1, p0, Lcom/sshtools/common/logger/FileLoggingContext;->currentOut:Ljava/io/OutputStream;

    .line 41
    iput-object p1, p0, Lcom/sshtools/common/logger/FileLoggingContext;->currentFile:Ljava/io/RandomAccessFile;

    const/4 p1, 0x1

    .line 46
    iput-boolean p1, p0, Lcom/sshtools/common/logger/FileLoggingContext;->logging:Z

    .line 54
    iput-object p2, p0, Lcom/sshtools/common/logger/FileLoggingContext;->logFile:Ljava/io/File;

    .line 55
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    .line 56
    invoke-virtual {p2}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 58
    :cond_0
    iput p3, p0, Lcom/sshtools/common/logger/FileLoggingContext;->maxFiles:I

    .line 59
    iput-wide p4, p0, Lcom/sshtools/common/logger/FileLoggingContext;->maxSize:J

    .line 60
    invoke-direct {p0}, Lcom/sshtools/common/logger/FileLoggingContext;->createLogFile()V

    .line 61
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p1

    new-instance p2, Lcom/sshtools/common/logger/FileLoggingContext$1;

    invoke-direct {p2, p0}, Lcom/sshtools/common/logger/FileLoggingContext$1;-><init>(Lcom/sshtools/common/logger/FileLoggingContext;)V

    invoke-virtual {p1, p2}, Ljava/lang/Runtime;->addShutdownHook(Ljava/lang/Thread;)V

    return-void
.end method

.method private declared-synchronized checkRollingLog()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 109
    :try_start_0
    iget-object v0, p0, Lcom/sshtools/common/logger/FileLoggingContext;->currentFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/sshtools/common/logger/FileLoggingContext;->currentFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sshtools/common/logger/FileLoggingContext;->maxSize:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 111
    invoke-direct {p0}, Lcom/sshtools/common/logger/FileLoggingContext;->closeLog()V

    .line 112
    iget-object v0, p0, Lcom/sshtools/common/logger/FileLoggingContext;->logFile:Ljava/io/File;

    iget v1, p0, Lcom/sshtools/common/logger/FileLoggingContext;->maxFiles:I

    invoke-static {v0, v1}, Lcom/sshtools/common/util/IOUtils;->rollover(Ljava/io/File;I)V

    .line 113
    invoke-direct {p0}, Lcom/sshtools/common/logger/FileLoggingContext;->createLogFile()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private closeLog()V
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/sshtools/common/logger/FileLoggingContext;->currentWriter:Ljava/io/BufferedWriter;

    invoke-static {v0}, Lcom/sshtools/common/util/IOUtils;->closeStream(Ljava/io/Closeable;)V

    .line 104
    iget-object v0, p0, Lcom/sshtools/common/logger/FileLoggingContext;->currentOut:Ljava/io/OutputStream;

    invoke-static {v0}, Lcom/sshtools/common/util/IOUtils;->closeStream(Ljava/io/OutputStream;)Z

    return-void
.end method

.method private createLogFile()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lcom/sshtools/common/logger/FileLoggingContext;->logFile:Ljava/io/File;

    const-string v2, "rw"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sshtools/common/logger/FileLoggingContext;->currentFile:Ljava/io/RandomAccessFile;

    .line 70
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 71
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    new-instance v2, Lcom/sshtools/common/util/RandomAccessOutputStream;

    iget-object v3, p0, Lcom/sshtools/common/logger/FileLoggingContext;->currentFile:Ljava/io/RandomAccessFile;

    invoke-direct {v2, v3}, Lcom/sshtools/common/util/RandomAccessOutputStream;-><init>(Ljava/io/RandomAccessFile;)V

    invoke-direct {v1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const/high16 v2, 0x10000

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    iput-object v0, p0, Lcom/sshtools/common/logger/FileLoggingContext;->currentWriter:Ljava/io/BufferedWriter;

    .line 72
    sget-object v0, Lcom/sshtools/common/logger/Log$Level;->INFO:Lcom/sshtools/common/logger/Log$Level;

    iget-object v1, p0, Lcom/sshtools/common/logger/FileLoggingContext;->logFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Logging file %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v3, v2}, Lcom/sshtools/common/logger/FileLoggingContext;->log(Lcom/sshtools/common/logger/Log$Level;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    return-void
.end method

.method private declared-synchronized logToFile(Ljava/lang/String;Z)V
    .locals 2

    monitor-enter p0

    .line 88
    :try_start_0
    invoke-direct {p0}, Lcom/sshtools/common/logger/FileLoggingContext;->checkRollingLog()V

    .line 89
    iget-object v0, p0, Lcom/sshtools/common/logger/FileLoggingContext;->currentFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/sshtools/common/logger/FileLoggingContext;->currentWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v0, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 92
    iget-object p1, p0, Lcom/sshtools/common/logger/FileLoggingContext;->currentWriter:Ljava/io/BufferedWriter;

    invoke-virtual {p1}, Ljava/io/BufferedWriter;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 96
    :try_start_1
    sget-object p2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v0, "Failed to log to %s"

    iget-object v1, p0, Lcom/sshtools/common/logger/FileLoggingContext;->logFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    const/4 p1, 0x0

    .line 98
    iput-boolean p1, p0, Lcom/sshtools/common/logger/FileLoggingContext;->logging:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 100
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 1

    monitor-enter p0

    .line 119
    :try_start_0
    invoke-direct {p0}, Lcom/sshtools/common/logger/FileLoggingContext;->closeLog()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getFile()Ljava/io/File;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/sshtools/common/logger/FileLoggingContext;->logFile:Ljava/io/File;

    return-object v0
.end method

.method public isLogging(Lcom/sshtools/common/logger/Log$Level;)Z
    .locals 1

    .line 78
    iget-boolean v0, p0, Lcom/sshtools/common/logger/FileLoggingContext;->logging:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lcom/sshtools/common/logger/AbstractLoggingContext;->isLogging(Lcom/sshtools/common/logger/Log$Level;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public varargs log(Lcom/sshtools/common/logger/Log$Level;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    .locals 0

    .line 83
    invoke-static {p1, p2, p3, p4}, Lcom/sshtools/common/logger/DefaultLoggerContext;->prepareLog(Lcom/sshtools/common/logger/Log$Level;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/sshtools/common/logger/FileLoggingContext;->logToFile(Ljava/lang/String;Z)V

    return-void
.end method

.method public newline()V
    .locals 2

    .line 130
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/sshtools/common/logger/FileLoggingContext;->logToFile(Ljava/lang/String;Z)V

    return-void
.end method

.method public raw(Lcom/sshtools/common/logger/Log$Level;Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    .line 124
    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, ""

    const/4 v3, 0x0

    invoke-static {p1, v2, v3, v1}, Lcom/sshtools/common/logger/DefaultLoggerContext;->prepareLog(Lcom/sshtools/common/logger/Log$Level;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lcom/sshtools/common/logger/FileLoggingContext;->logToFile(Ljava/lang/String;Z)V

    const/4 p1, 0x1

    .line 125
    invoke-direct {p0, p2, p1}, Lcom/sshtools/common/logger/FileLoggingContext;->logToFile(Ljava/lang/String;Z)V

    return-void
.end method
