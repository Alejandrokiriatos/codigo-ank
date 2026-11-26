.class public Lcom/sshtools/common/logger/DefaultLoggerContext;
.super Ljava/lang/Object;
.source "DefaultLoggerContext.java"

# interfaces
.implements Lcom/sshtools/common/logger/RootLoggerContext;


# static fields
.field static df:Ljava/text/DateFormat;


# instance fields
.field contexts:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/sshtools/common/logger/LoggerContext;",
            ">;"
        }
    .end annotation
.end field

.field propertiesFile:Ljava/io/File;

.field props:Ljava/util/Properties;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 49
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd MMM yyyy HH:mm:ss,SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sshtools/common/logger/DefaultLoggerContext;->df:Ljava/text/DateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sshtools/common/logger/DefaultLoggerContext;->contexts:Ljava/util/Collection;

    .line 54
    new-instance v0, Ljava/io/File;

    const-string v1, "maverick.log.config"

    const-string v2, "logging.properties"

    invoke-static {v1, v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/common/logger/DefaultLoggerContext;->propertiesFile:Ljava/io/File;

    .line 55
    invoke-direct {p0}, Lcom/sshtools/common/logger/DefaultLoggerContext;->loadFile()V

    .line 56
    const-string v0, "maverick.log.nothread"

    const-string v1, "false"

    invoke-virtual {p0, v0, v1}, Lcom/sshtools/common/logger/DefaultLoggerContext;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 60
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/sshtools/common/logger/DefaultLoggerContext;->propertiesFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    .line 61
    invoke-static {}, Lcom/sshtools/common/logger/FileWatchingService;->getInstance()Lcom/sshtools/common/logger/FileWatchingService;

    move-result-object v1

    new-instance v2, Lcom/sshtools/common/logger/DefaultLoggerContext$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Lcom/sshtools/common/logger/DefaultLoggerContext$$ExternalSyntheticLambda0;-><init>(Lcom/sshtools/common/logger/DefaultLoggerContext;Ljava/nio/file/Path;)V

    invoke-virtual {v1, v0, v2}, Lcom/sshtools/common/logger/FileWatchingService;->register(Ljava/nio/file/Path;Lcom/sshtools/common/logger/FileWatchingCallback;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 66
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "Logging context could not be initialized!"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 67
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private declared-synchronized loadFile()V
    .locals 7

    monitor-enter p0

    .line 104
    :try_start_0
    iget-object v0, p0, Lcom/sshtools/common/logger/DefaultLoggerContext;->contexts:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sshtools/common/logger/LoggerContext;

    .line 105
    invoke-interface {v1}, Lcom/sshtools/common/logger/LoggerContext;->close()V

    goto :goto_0

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/sshtools/common/logger/DefaultLoggerContext;->contexts:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 110
    iget-object v0, p0, Lcom/sshtools/common/logger/DefaultLoggerContext;->propertiesFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 111
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lcom/sshtools/common/logger/DefaultLoggerContext;->props:Ljava/util/Properties;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 112
    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v0, p0, Lcom/sshtools/common/logger/DefaultLoggerContext;->propertiesFile:Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 113
    :try_start_2
    iget-object v0, p0, Lcom/sshtools/common/logger/DefaultLoggerContext;->props:Ljava/util/Properties;

    invoke-virtual {v0, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 114
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 112
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    :try_start_5
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v2
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catch_0
    move-exception v0

    .line 115
    :try_start_6
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 118
    :cond_1
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/common/logger/DefaultLoggerContext;->props:Ljava/util/Properties;

    .line 121
    :goto_2
    const-string v0, "true"

    const-string v1, "maverick.log.console"

    const-string v2, "false"

    invoke-virtual {p0, v1, v2}, Lcom/sshtools/common/logger/DefaultLoggerContext;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 122
    const-string v0, "maverick.log.console.level"

    const-string v1, "INFO"

    invoke-virtual {p0, v0, v1}, Lcom/sshtools/common/logger/DefaultLoggerContext;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sshtools/common/logger/Log$Level;->valueOf(Ljava/lang/String;)Lcom/sshtools/common/logger/Log$Level;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sshtools/common/logger/DefaultLoggerContext;->enableConsole(Lcom/sshtools/common/logger/Log$Level;)V

    .line 125
    :cond_2
    const-string v0, "true"

    const-string v1, "maverick.log.file"

    const-string v2, "false"

    invoke-virtual {p0, v1, v2}, Lcom/sshtools/common/logger/DefaultLoggerContext;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 126
    const-string v0, "maverick.log.file.level"

    const-string v1, "INFO"

    invoke-virtual {p0, v0, v1}, Lcom/sshtools/common/logger/DefaultLoggerContext;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sshtools/common/logger/Log$Level;->valueOf(Ljava/lang/String;)Lcom/sshtools/common/logger/Log$Level;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    const-string v0, "maverick.log.file.path"

    const-string v1, "synergy.log"

    .line 127
    invoke-virtual {p0, v0, v1}, Lcom/sshtools/common/logger/DefaultLoggerContext;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v0, "maverick.log.file.maxFiles"

    const-string v1, "10"

    .line 128
    invoke-virtual {p0, v0, v1}, Lcom/sshtools/common/logger/DefaultLoggerContext;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const-string v0, "maverick.log.file.maxSize"

    const-string v1, "20MB"

    .line 129
    invoke-virtual {p0, v0, v1}, Lcom/sshtools/common/logger/DefaultLoggerContext;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sshtools/common/util/IOUtils;->fromByteSize(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-object v1, p0

    .line 126
    :try_start_7
    invoke-virtual/range {v1 .. v6}, Lcom/sshtools/common/logger/DefaultLoggerContext;->enableFile(Lcom/sshtools/common/logger/Log$Level;Ljava/io/File;IJ)V

    goto :goto_3

    :cond_3
    move-object v1, p0

    .line 132
    :goto_3
    sget-object v0, Lcom/sshtools/common/logger/Log$Level;->INFO:Lcom/sshtools/common/logger/Log$Level;

    const-string v2, "Reloaded logging configuration {} [{}]"

    iget-object v3, v1, Lcom/sshtools/common/logger/DefaultLoggerContext;->propertiesFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Lcom/sshtools/common/logger/DefaultLoggerContext;->propertiesFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0, v0, v2, v4, v3}, Lcom/sshtools/common/logger/DefaultLoggerContext;->log(Lcom/sshtools/common/logger/Log$Level;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 133
    monitor-exit p0

    return-void

    :catchall_2
    move-exception v0

    move-object v1, p0

    :goto_4
    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v0

    :catchall_3
    move-exception v0

    goto :goto_4
.end method

.method public static varargs prepareLog(Lcom/sshtools/common/logger/Log$Level;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 6

    .line 207
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 209
    sget-object v1, Lcom/sshtools/common/logger/DefaultLoggerContext;->df:Ljava/text/DateFormat;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 210
    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 211
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    .line 212
    invoke-virtual {p0}, Lcom/sshtools/common/logger/Log$Level;->name()Ljava/lang/String;

    move-result-object p0

    filled-new-array {v1, v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 209
    const-string v1, "%s [%20s] %6s - "

    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 214
    array-length p0, p3

    if-lez p0, :cond_1

    const-string p0, "{}"

    invoke-virtual {p1, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-le v1, v2, :cond_1

    const/4 v1, 0x0

    move v3, v1

    move v4, v3

    .line 216
    :goto_0
    array-length v5, p3

    if-ge v1, v5, :cond_0

    invoke-virtual {p1, p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    if-le v4, v2, :cond_0

    .line 217
    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 218
    aget-object v3, p3, v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v4, 0x2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 223
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    add-int/lit8 v3, v3, 0x2

    if-le p0, v3, :cond_2

    add-int/lit8 v4, v4, 0x2

    .line 224
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 227
    :cond_1
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 230
    :cond_2
    :goto_1
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 232
    invoke-static {p2}, Ljava/util/Objects;->nonNull(Ljava/lang/Object;)Z

    if-eqz p2, :cond_3

    .line 233
    new-instance p0, Ljava/io/StringWriter;

    invoke-direct {p0}, Ljava/io/StringWriter;-><init>()V

    .line 234
    new-instance p1, Ljava/io/PrintWriter;

    invoke-direct {p1, p0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 235
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 237
    invoke-virtual {p0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 238
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 241
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public close()V
    .locals 0

    return-void
.end method

.method public declared-synchronized enableConsole(Lcom/sshtools/common/logger/Log$Level;)V
    .locals 4

    monitor-enter p0

    .line 137
    :try_start_0
    iget-object v0, p0, Lcom/sshtools/common/logger/DefaultLoggerContext;->contexts:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sshtools/common/logger/LoggerContext;

    .line 138
    instance-of v2, v2, Lcom/sshtools/common/logger/ConsoleLoggingContext;

    if-eqz v2, :cond_0

    move v1, v3

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    .line 143
    iget-object v0, p0, Lcom/sshtools/common/logger/DefaultLoggerContext;->contexts:Ljava/util/Collection;

    new-instance v1, Lcom/sshtools/common/logger/ConsoleLoggingContext;

    invoke-direct {v1, p1}, Lcom/sshtools/common/logger/ConsoleLoggingContext;-><init>(Lcom/sshtools/common/logger/Log$Level;)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 144
    sget-object p1, Lcom/sshtools/common/logger/Log$Level;->INFO:Lcom/sshtools/common/logger/Log$Level;

    const-string v0, "Console logging enabled"

    new-array v1, v3, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v2, v1}, Lcom/sshtools/common/logger/DefaultLoggerContext;->log(Lcom/sshtools/common/logger/Log$Level;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    :cond_2
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

.method public declared-synchronized enableFile(Lcom/sshtools/common/logger/Log$Level;Ljava/io/File;)V
    .locals 3

    monitor-enter p0

    .line 156
    :try_start_0
    iget-object v0, p0, Lcom/sshtools/common/logger/DefaultLoggerContext;->contexts:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 157
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 158
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sshtools/common/logger/LoggerContext;

    .line 159
    instance-of v2, v1, Lcom/sshtools/common/logger/FileLoggingContext;

    if-eqz v2, :cond_0

    .line 160
    check-cast v1, Lcom/sshtools/common/logger/FileLoggingContext;

    .line 161
    invoke-virtual {v1}, Lcom/sshtools/common/logger/FileLoggingContext;->getFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 162
    invoke-virtual {v1}, Lcom/sshtools/common/logger/FileLoggingContext;->close()V

    .line 163
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 167
    :cond_1
    iget-object v0, p0, Lcom/sshtools/common/logger/DefaultLoggerContext;->contexts:Ljava/util/Collection;

    new-instance v1, Lcom/sshtools/common/logger/FileLoggingContext;

    invoke-direct {v1, p1, p2}, Lcom/sshtools/common/logger/FileLoggingContext;-><init>(Lcom/sshtools/common/logger/Log$Level;Ljava/io/File;)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 169
    :try_start_1
    sget-object p2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v0, "Error logging to file"

    invoke-virtual {p2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 170
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 172
    :goto_1
    monitor-exit p0

    return-void

    :goto_2
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public declared-synchronized enableFile(Lcom/sshtools/common/logger/Log$Level;Ljava/io/File;IJ)V
    .locals 7

    monitor-enter p0

    .line 177
    :try_start_0
    iget-object v0, p0, Lcom/sshtools/common/logger/DefaultLoggerContext;->contexts:Ljava/util/Collection;

    new-instance v1, Lcom/sshtools/common/logger/FileLoggingContext;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-wide v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/sshtools/common/logger/FileLoggingContext;-><init>(Lcom/sshtools/common/logger/Log$Level;Ljava/io/File;IJ)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 179
    :try_start_1
    sget-object p2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string p3, "Error logging to file"

    invoke-virtual {p2, p3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 180
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 182
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

.method public enableFile(Lcom/sshtools/common/logger/Log$Level;Ljava/lang/String;)V
    .locals 1

    .line 150
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/sshtools/common/logger/DefaultLoggerContext;->enableFile(Lcom/sshtools/common/logger/Log$Level;Ljava/io/File;)V

    return-void
.end method

.method public getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/sshtools/common/logger/DefaultLoggerContext;->props:Ljava/util/Properties;

    invoke-virtual {v0, p1, p2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/sshtools/common/logger/DefaultLoggerContext;->processTokenReplacements(Ljava/lang/String;Ljava/util/Properties;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized isLogging(Lcom/sshtools/common/logger/Log$Level;)Z
    .locals 2

    monitor-enter p0

    .line 194
    :try_start_0
    iget-object v0, p0, Lcom/sshtools/common/logger/DefaultLoggerContext;->contexts:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sshtools/common/logger/LoggerContext;

    .line 195
    invoke-interface {v1, p1}, Lcom/sshtools/common/logger/LoggerContext;->isLogging(Lcom/sshtools/common/logger/Log$Level;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 196
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    .line 199
    :cond_1
    monitor-exit p0

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method synthetic lambda$new$0$com-sshtools-common-logger-DefaultLoggerContext(Ljava/nio/file/Path;Ljava/nio/file/Path;)V
    .locals 0

    .line 62
    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 63
    invoke-direct {p0}, Lcom/sshtools/common/logger/DefaultLoggerContext;->loadFile()V

    :cond_0
    return-void
.end method

.method public varargs declared-synchronized log(Lcom/sshtools/common/logger/Log$Level;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    .locals 2

    monitor-enter p0

    .line 246
    :try_start_0
    iget-object v0, p0, Lcom/sshtools/common/logger/DefaultLoggerContext;->contexts:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sshtools/common/logger/LoggerContext;

    .line 247
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/sshtools/common/logger/LoggerContext;->log(Lcom/sshtools/common/logger/Log$Level;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 249
    :cond_0
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

.method public declared-synchronized newline()V
    .locals 2

    monitor-enter p0

    .line 267
    :try_start_0
    iget-object v0, p0, Lcom/sshtools/common/logger/DefaultLoggerContext;->contexts:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sshtools/common/logger/LoggerContext;

    .line 268
    invoke-interface {v1}, Lcom/sshtools/common/logger/LoggerContext;->newline()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 270
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

.method public processTokenReplacements(Ljava/lang/String;Ljava/util/Properties;)Ljava/lang/String;
    .locals 5

    .line 81
    const-string v0, "\\$\\{(.*?)\\}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 82
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    .line 86
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    .line 87
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 88
    invoke-virtual {p2, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 92
    :cond_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v4

    invoke-virtual {p1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    goto :goto_0

    .line 97
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p1, v2, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized raw(Lcom/sshtools/common/logger/Log$Level;Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    .line 253
    :try_start_0
    iget-object v0, p0, Lcom/sshtools/common/logger/DefaultLoggerContext;->contexts:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sshtools/common/logger/LoggerContext;

    .line 254
    invoke-interface {v1, p1, p2}, Lcom/sshtools/common/logger/LoggerContext;->raw(Lcom/sshtools/common/logger/Log$Level;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 256
    :cond_0
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

.method public declared-synchronized reset()V
    .locals 2

    monitor-enter p0

    .line 185
    :try_start_0
    iget-object v0, p0, Lcom/sshtools/common/logger/DefaultLoggerContext;->contexts:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sshtools/common/logger/LoggerContext;

    .line 186
    invoke-interface {v1}, Lcom/sshtools/common/logger/LoggerContext;->close()V

    goto :goto_0

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/sshtools/common/logger/DefaultLoggerContext;->contexts:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
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

.method public shutdown()V
    .locals 0

    .line 72
    invoke-virtual {p0}, Lcom/sshtools/common/logger/DefaultLoggerContext;->reset()V

    return-void
.end method
