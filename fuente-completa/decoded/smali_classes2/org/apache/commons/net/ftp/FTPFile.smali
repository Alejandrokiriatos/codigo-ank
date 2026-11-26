.class public Lorg/apache/commons/net/ftp/FTPFile;
.super Ljava/lang/Object;
.source "FTPFile.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final DIRECTORY_TYPE:I = 0x1

.field public static final EXECUTE_PERMISSION:I = 0x2

.field public static final FILE_TYPE:I = 0x0

.field public static final GROUP_ACCESS:I = 0x1

.field public static final READ_PERMISSION:I = 0x0

.field public static final SYMBOLIC_LINK_TYPE:I = 0x2

.field public static final UNKNOWN_TYPE:I = 0x3

.field public static final USER_ACCESS:I = 0x0

.field public static final WORLD_ACCESS:I = 0x2

.field public static final WRITE_PERMISSION:I = 0x1

.field private static final serialVersionUID:J = 0x7d0cc2180c52bb3cL


# instance fields
.field private calendar:Ljava/util/Calendar;

.field private group:Ljava/lang/String;

.field private hardLinkCount:I

.field private link:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private final permissions:[[Z

.field private rawListing:Ljava/lang/String;

.field private size:J

.field private type:I

.field private user:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 70
    iput v0, p0, Lorg/apache/commons/net/ftp/FTPFile;->type:I

    const-wide/16 v1, -0x1

    .line 76
    iput-wide v1, p0, Lorg/apache/commons/net/ftp/FTPFile;->size:J

    .line 82
    const-string v1, ""

    iput-object v1, p0, Lorg/apache/commons/net/ftp/FTPFile;->user:Ljava/lang/String;

    .line 85
    iput-object v1, p0, Lorg/apache/commons/net/ftp/FTPFile;->group:Ljava/lang/String;

    const/4 v1, 0x2

    .line 101
    new-array v1, v1, [I

    const/4 v2, 0x1

    aput v0, v1, v2

    const/4 v2, 0x0

    aput v0, v1, v2

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTPFile;->permissions:[[Z

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 70
    iput v0, p0, Lorg/apache/commons/net/ftp/FTPFile;->type:I

    const-wide/16 v0, -0x1

    .line 76
    iput-wide v0, p0, Lorg/apache/commons/net/ftp/FTPFile;->size:J

    .line 82
    const-string v0, ""

    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTPFile;->user:Ljava/lang/String;

    .line 85
    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTPFile;->group:Ljava/lang/String;

    const/4 v0, 0x0

    .line 111
    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTPFile;->permissions:[[Z

    .line 112
    iput-object p1, p0, Lorg/apache/commons/net/ftp/FTPFile;->rawListing:Ljava/lang/String;

    return-void
.end method

.method private formatType()C
    .locals 2

    .line 116
    iget v0, p0, Lorg/apache/commons/net/ftp/FTPFile;->type:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/16 v0, 0x3f

    return v0

    :cond_0
    const/16 v0, 0x6c

    return v0

    :cond_1
    const/16 v0, 0x64

    return v0

    :cond_2
    const/16 v0, 0x2d

    return v0
.end method

.method private permissionToString(I)Ljava/lang/String;
    .locals 3

    .line 286
    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    .line 287
    invoke-virtual {p0, p1, v1}, Lorg/apache/commons/net/ftp/FTPFile;->hasPermission(II)Z

    move-result v1

    const/16 v2, 0x2d

    if-eqz v1, :cond_0

    const/16 v1, 0x72

    .line 288
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 290
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_0
    const/4 v1, 0x1

    .line 292
    invoke-virtual {p0, p1, v1}, Lorg/apache/commons/net/ftp/FTPFile;->hasPermission(II)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x77

    .line 293
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 295
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    const/4 v1, 0x2

    .line 297
    invoke-virtual {p0, p1, v1}, Lorg/apache/commons/net/ftp/FTPFile;->hasPermission(II)Z

    move-result p1

    if-eqz p1, :cond_2

    const/16 p1, 0x78

    .line 298
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 300
    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 302
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1

    .line 311
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Serialization is not supported"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1

    .line 504
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Serialization is not supported"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getGroup()Ljava/lang/String;
    .locals 1

    .line 134
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPFile;->group:Ljava/lang/String;

    return-object v0
.end method

.method public getHardLinkCount()I
    .locals 1

    .line 143
    iget v0, p0, Lorg/apache/commons/net/ftp/FTPFile;->hardLinkCount:I

    return v0
.end method

.method public getLink()Ljava/lang/String;
    .locals 1

    .line 153
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPFile;->link:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 162
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPFile;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getRawListing()Ljava/lang/String;
    .locals 1

    .line 171
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPFile;->rawListing:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .line 180
    iget-wide v0, p0, Lorg/apache/commons/net/ftp/FTPFile;->size:J

    return-wide v0
.end method

.method public getTimestamp()Ljava/util/Calendar;
    .locals 1

    .line 189
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPFile;->calendar:Ljava/util/Calendar;

    return-object v0
.end method

.method public getTimestampInstant()Ljava/time/Instant;
    .locals 1

    .line 199
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPFile;->calendar:Ljava/util/Calendar;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/util/Calendar;->toInstant()Ljava/time/Instant;

    move-result-object v0

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 208
    iget v0, p0, Lorg/apache/commons/net/ftp/FTPFile;->type:I

    return v0
.end method

.method public getUser()Ljava/lang/String;
    .locals 1

    .line 217
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPFile;->user:Ljava/lang/String;

    return-object v0
.end method

.method public hasPermission(II)Z
    .locals 1

    .line 230
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPFile;->permissions:[[Z

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 233
    :cond_0
    aget-object p1, v0, p1

    aget-boolean p1, p1, p2

    return p1
.end method

.method public isDirectory()Z
    .locals 2

    .line 242
    iget v0, p0, Lorg/apache/commons/net/ftp/FTPFile;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isFile()Z
    .locals 1

    .line 251
    iget v0, p0, Lorg/apache/commons/net/ftp/FTPFile;->type:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isSymbolicLink()Z
    .locals 2

    .line 260
    iget v0, p0, Lorg/apache/commons/net/ftp/FTPFile;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isUnknown()Z
    .locals 2

    .line 269
    iget v0, p0, Lorg/apache/commons/net/ftp/FTPFile;->type:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isValid()Z
    .locals 1

    .line 282
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPFile;->permissions:[[Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setGroup(Ljava/lang/String;)V
    .locals 0

    .line 320
    iput-object p1, p0, Lorg/apache/commons/net/ftp/FTPFile;->group:Ljava/lang/String;

    return-void
.end method

.method public setHardLinkCount(I)V
    .locals 0

    .line 329
    iput p1, p0, Lorg/apache/commons/net/ftp/FTPFile;->hardLinkCount:I

    return-void
.end method

.method public setLink(Ljava/lang/String;)V
    .locals 0

    .line 338
    iput-object p1, p0, Lorg/apache/commons/net/ftp/FTPFile;->link:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 347
    iput-object p1, p0, Lorg/apache/commons/net/ftp/FTPFile;->name:Ljava/lang/String;

    return-void
.end method

.method public setPermission(IIZ)V
    .locals 1

    .line 361
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPFile;->permissions:[[Z

    aget-object p1, v0, p1

    aput-boolean p3, p1, p2

    return-void
.end method

.method public setRawListing(Ljava/lang/String;)V
    .locals 0

    .line 370
    iput-object p1, p0, Lorg/apache/commons/net/ftp/FTPFile;->rawListing:Ljava/lang/String;

    return-void
.end method

.method public setSize(J)V
    .locals 0

    .line 379
    iput-wide p1, p0, Lorg/apache/commons/net/ftp/FTPFile;->size:J

    return-void
.end method

.method public setTimestamp(Ljava/util/Calendar;)V
    .locals 0

    .line 388
    iput-object p1, p0, Lorg/apache/commons/net/ftp/FTPFile;->calendar:Ljava/util/Calendar;

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 397
    iput p1, p0, Lorg/apache/commons/net/ftp/FTPFile;->type:I

    return-void
.end method

.method public setUser(Ljava/lang/String;)V
    .locals 0

    .line 406
    iput-object p1, p0, Lorg/apache/commons/net/ftp/FTPFile;->user:Ljava/lang/String;

    return-void
.end method

.method public toFormattedString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 420
    invoke-virtual {p0, v0}, Lorg/apache/commons/net/ftp/FTPFile;->toFormattedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toFormattedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 436
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPFile;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 437
    const-string p1, "[Invalid: could not parse file entry]"

    return-object p1

    .line 439
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 440
    new-instance v1, Ljava/util/Formatter;

    invoke-direct {v1, v0}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    .line 441
    :try_start_0
    invoke-direct {p0}, Lorg/apache/commons/net/ftp/FTPFile;->formatType()C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    .line 442
    invoke-direct {p0, v2}, Lorg/apache/commons/net/ftp/FTPFile;->permissionToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    .line 443
    invoke-direct {p0, v2}, Lorg/apache/commons/net/ftp/FTPFile;->permissionToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x2

    .line 444
    invoke-direct {p0, v2}, Lorg/apache/commons/net/ftp/FTPFile;->permissionToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    const-string v2, " %4d"

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPFile;->getHardLinkCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 446
    const-string v2, " %-8s %-8s"

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPFile;->getUser()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPFile;->getGroup()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 447
    const-string v2, " %8d"

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPFile;->getSize()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 448
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPFile;->getTimestamp()Ljava/util/Calendar;

    move-result-object v2

    if-eqz v2, :cond_3

    if-eqz p1, :cond_1

    .line 451
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p1

    .line 452
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 453
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    .line 454
    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object p1

    .line 455
    invoke-virtual {p1, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    move-object v2, p1

    .line 459
    :cond_1
    const-string p1, " %1$tY-%1$tm-%1$td"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, p1, v3}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    const/16 p1, 0xb

    .line 461
    invoke-virtual {v2, p1}, Ljava/util/Calendar;->isSet(I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 462
    const-string p1, " %1$tH"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, p1, v3}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    const/16 p1, 0xc

    .line 463
    invoke-virtual {v2, p1}, Ljava/util/Calendar;->isSet(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 464
    const-string p1, ":%1$tM"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, p1, v3}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    const/16 p1, 0xd

    .line 465
    invoke-virtual {v2, p1}, Ljava/util/Calendar;->isSet(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 466
    const-string p1, ":%1$tS"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, p1, v3}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    const/16 p1, 0xe

    .line 467
    invoke-virtual {v2, p1}, Ljava/util/Calendar;->isSet(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 468
    const-string p1, ".%1$tL"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, p1, v3}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 472
    :cond_2
    const-string p1, " %1$tZ"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    :cond_3
    const/16 p1, 0x20

    .line 475
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 476
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPFile;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 477
    invoke-virtual {v1}, Ljava/util/Formatter;->close()V

    .line 478
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    .line 440
    :try_start_1
    invoke-virtual {v1}, Ljava/util/Formatter;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 494
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPFile;->getRawListing()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
