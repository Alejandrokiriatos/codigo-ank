.class public final Lcom/sshtools/common/sftp/PosixPermissions$PosixPermissionsBuilder;
.super Ljava/lang/Object;
.source "PosixPermissions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sshtools/common/sftp/PosixPermissions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PosixPermissionsBuilder"
.end annotation


# instance fields
.field private perms:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/nio/file/attribute/PosixFilePermission;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetperms(Lcom/sshtools/common/sftp/PosixPermissions$PosixPermissionsBuilder;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/sshtools/common/sftp/PosixPermissions$PosixPermissionsBuilder;->perms:Ljava/util/Set;

    return-object p0
.end method

.method private constructor <init>()V
    .locals 1

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/sshtools/common/sftp/PosixPermissions$PosixPermissionsBuilder;->perms:Ljava/util/Set;

    return-void
.end method

.method public static create()Lcom/sshtools/common/sftp/PosixPermissions$PosixPermissionsBuilder;
    .locals 1

    .line 83
    new-instance v0, Lcom/sshtools/common/sftp/PosixPermissions$PosixPermissionsBuilder;

    invoke-direct {v0}, Lcom/sshtools/common/sftp/PosixPermissions$PosixPermissionsBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public build()Lcom/sshtools/common/sftp/PosixPermissions;
    .locals 2

    .line 97
    new-instance v0, Lcom/sshtools/common/sftp/PosixPermissions;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sshtools/common/sftp/PosixPermissions;-><init>(Lcom/sshtools/common/sftp/PosixPermissions$PosixPermissionsBuilder;Lcom/sshtools/common/sftp/PosixPermissions-IA;)V

    return-object v0
.end method

.method public fromAllPermissions()Lcom/sshtools/common/sftp/PosixPermissions$PosixPermissionsBuilder;
    .locals 1

    .line 106
    invoke-static {}, Ljava/nio/file/attribute/PosixFilePermission;->values()[Ljava/nio/file/attribute/PosixFilePermission;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sshtools/common/sftp/PosixPermissions$PosixPermissionsBuilder;->fromPermissions([Ljava/nio/file/attribute/PosixFilePermission;)Lcom/sshtools/common/sftp/PosixPermissions$PosixPermissionsBuilder;

    move-result-object v0

    return-object v0
.end method

.method public fromBitmask(J)Lcom/sshtools/common/sftp/PosixPermissions$PosixPermissionsBuilder;
    .locals 8

    .line 120
    iget-object v0, p0, Lcom/sshtools/common/sftp/PosixPermissions$PosixPermissionsBuilder;->perms:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 122
    invoke-static {}, Ljava/nio/file/attribute/PosixFilePermission;->values()[Ljava/nio/file/attribute/PosixFilePermission;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 123
    invoke-static {v3}, Lcom/sshtools/common/sftp/PosixPermissions;->toMask(Ljava/nio/file/attribute/PosixFilePermission;)I

    move-result v4

    int-to-long v4, v4

    and-long/2addr v4, p1

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    .line 124
    iget-object v4, p0, Lcom/sshtools/common/sftp/PosixPermissions$PosixPermissionsBuilder;->perms:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public fromBitmask(Lcom/sshtools/common/util/UnsignedInteger32;)Lcom/sshtools/common/sftp/PosixPermissions$PosixPermissionsBuilder;
    .locals 2

    .line 140
    invoke-virtual {p1}, Lcom/sshtools/common/util/UnsignedInteger32;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/sshtools/common/sftp/PosixPermissions$PosixPermissionsBuilder;->fromBitmask(J)Lcom/sshtools/common/sftp/PosixPermissions$PosixPermissionsBuilder;

    move-result-object p1

    return-object p1
.end method

.method public fromFileModeString(Ljava/lang/String;)Lcom/sshtools/common/sftp/PosixPermissions$PosixPermissionsBuilder;
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/sshtools/common/sftp/PosixPermissions$PosixPermissionsBuilder;->perms:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 157
    iget-object v0, p0, Lcom/sshtools/common/sftp/PosixPermissions$PosixPermissionsBuilder;->perms:Ljava/util/Set;

    invoke-static {p1}, Ljava/nio/file/attribute/PosixFilePermissions;->fromString(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public fromLaxFileModeString(Ljava/lang/String;)Lcom/sshtools/common/sftp/PosixPermissions$PosixPermissionsBuilder;
    .locals 2

    .line 175
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "-"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 177
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sshtools/common/sftp/PosixPermissions$PosixPermissionsBuilder;->fromFileModeString(Ljava/lang/String;)Lcom/sshtools/common/sftp/PosixPermissions$PosixPermissionsBuilder;

    move-result-object p1

    return-object p1
.end method

.method public fromMaskString(Ljava/lang/String;)Lcom/sshtools/common/sftp/PosixPermissions$PosixPermissionsBuilder;
    .locals 2

    .line 192
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 196
    :try_start_0
    new-instance v0, Lcom/sshtools/common/util/UnsignedInteger32;

    const/16 v1, 0x8

    invoke-static {p1, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/sshtools/common/util/UnsignedInteger32;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sshtools/common/sftp/PosixPermissions$PosixPermissionsBuilder;->fromBitmask(Lcom/sshtools/common/util/UnsignedInteger32;)Lcom/sshtools/common/sftp/PosixPermissions$PosixPermissionsBuilder;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 198
    :catch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Mask must be 4 digit octal number."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 193
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Mask length must be 4"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public fromNoPermissions()Lcom/sshtools/common/sftp/PosixPermissions$PosixPermissionsBuilder;
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/sshtools/common/sftp/PosixPermissions$PosixPermissionsBuilder;->perms:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-object p0
.end method

.method public fromPermissions(Ljava/util/Collection;)Lcom/sshtools/common/sftp/PosixPermissions$PosixPermissionsBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/nio/file/attribute/PosixFilePermission;",
            ">;)",
            "Lcom/sshtools/common/sftp/PosixPermissions$PosixPermissionsBuilder;"
        }
    .end annotation

    .line 235
    iget-object v0, p0, Lcom/sshtools/common/sftp/PosixPermissions$PosixPermissionsBuilder;->perms:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 236
    iget-object v0, p0, Lcom/sshtools/common/sftp/PosixPermissions$PosixPermissionsBuilder;->perms:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public varargs fromPermissions([Ljava/nio/file/attribute/PosixFilePermission;)Lcom/sshtools/common/sftp/PosixPermissions$PosixPermissionsBuilder;
    .locals 0

    .line 222
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sshtools/common/sftp/PosixPermissions$PosixPermissionsBuilder;->fromPermissions(Ljava/util/Collection;)Lcom/sshtools/common/sftp/PosixPermissions$PosixPermissionsBuilder;

    move-result-object p1

    return-object p1
.end method

.method public fromPosixPermissions(Lcom/sshtools/common/sftp/PosixPermissions;)Lcom/sshtools/common/sftp/PosixPermissions$PosixPermissionsBuilder;
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/sshtools/common/sftp/PosixPermissions$PosixPermissionsBuilder;->perms:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 251
    iget-object v0, p0, Lcom/sshtools/common/sftp/PosixPermissions$PosixPermissionsBuilder;->perms:Ljava/util/Set;

    invoke-static {p1}, Lcom/sshtools/common/sftp/PosixPermissions;->-$$Nest$fgetperms(Lcom/sshtools/common/sftp/PosixPermissions;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public fromUmaskString(Ljava/lang/String;)Lcom/sshtools/common/sftp/PosixPermissions$PosixPermissionsBuilder;
    .locals 2

    .line 267
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 271
    :try_start_0
    new-instance v0, Lcom/sshtools/common/util/UnsignedInteger32;

    const/16 v1, 0x8

    invoke-static {p1, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p1

    xor-int/lit16 p1, p1, 0x1ff

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/sshtools/common/util/UnsignedInteger32;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sshtools/common/sftp/PosixPermissions$PosixPermissionsBuilder;->fromBitmask(Lcom/sshtools/common/util/UnsignedInteger32;)Lcom/sshtools/common/sftp/PosixPermissions$PosixPermissionsBuilder;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 273
    :catch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Mask must be 4 digit octal number."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 268
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Mask length must be 4"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public withAllExecute()Lcom/sshtools/common/sftp/PosixPermissions$PosixPermissionsBuilder;
    .locals 3

    const/4 v0, 0x3

    .line 283
    new-array v0, v0, [Ljava/nio/file/attribute/PosixFilePermission;

    const/4 v1, 0x0

    sget-object v2, Ljava/nio/file/attribute/PosixFilePermission;->OWNER_EXECUTE:Ljava/nio/file/attribute/PosixFilePermission;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Ljava/nio/file/attribute/PosixFilePermission;->GROUP_EXECUTE:Ljava/nio/file/attribute/PosixFilePermission;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Ljava/nio/file/attribute/PosixFilePermission;->OTHERS_EXECUTE:Ljava/nio/file/attribute/PosixFilePermission;

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/sshtools/common/sftp/PosixPermissions$PosixPermissionsBuilder;->withPermissions([Ljava/nio/file/attribute/PosixFilePermission;)Lcom/sshtools/common/sftp/PosixPermissions$PosixPermissionsBuilder;

    move-result-object v0

    return-object v0
.end method

.method public withAllRead()Lcom/sshtools/common/sftp/PosixPermissions$PosixPermissionsBuilder;
    .locals 3

    const/4 v0, 0x3

    .line 292
    new-array v0, v0, [Ljava/nio/file/attribute/PosixFilePermission;

    const/4 v1, 0x0

    sget-object v2, Ljava/nio/file/attribute/PosixFilePermission;->OWNER_READ:Ljava/nio/file/attribute/PosixFilePermission;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Ljava/nio/file/attribute/PosixFilePermission;->GROUP_READ:Ljava/nio/file/attribute/PosixFilePermission;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Ljava/nio/file/attribute/PosixFilePermission;->OTHERS_READ:Ljava/nio/file/attribute/PosixFilePermission;

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/sshtools/common/sftp/PosixPermissions$PosixPermissionsBuilder;->withPermissions([Ljava/nio/file/attribute/PosixFilePermission;)Lcom/sshtools/common/sftp/PosixPermissions$PosixPermissionsBuilder;

    move-result-object v0

    return-object v0
.end method

.method public withAllWrite()Lcom/sshtools/common/sftp/PosixPermissions$PosixPermissionsBuilder;
    .locals 3

    const/4 v0, 0x3

    .line 301
    new-array v0, v0, [Ljava/nio/file/attribute/PosixFilePermission;

    const/4 v1, 0x0

    sget-object v2, Ljava/nio/file/attribute/PosixFilePermission;->OWNER_WRITE:Ljava/nio/file/attribute/PosixFilePermission;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Ljava/nio/file/attribute/PosixFilePermission;->GROUP_WRITE:Ljava/nio/file/attribute/PosixFilePermission;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Ljava/nio/file/attribute/PosixFilePermission;->OTHERS_WRITE:Ljava/nio/file/attribute/PosixFilePermission;

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/sshtools/common/sftp/PosixPermissions$PosixPermissionsBuilder;->withPermissions([Ljava/nio/file/attribute/PosixFilePermission;)Lcom/sshtools/common/sftp/PosixPermissions$PosixPermissionsBuilder;

    move-result-object v0

    return-object v0
.end method

.method public withBitmaskFlags(J)Lcom/sshtools/common/sftp/PosixPermissions$PosixPermissionsBuilder;
    .locals 8

    .line 313
    invoke-static {}, Ljava/nio/file/attribute/PosixFilePermission;->values()[Ljava/nio/file/attribute/PosixFilePermission;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 314
    invoke-static {v3}, Lcom/sshtools/common/sftp/PosixPermissions;->toMask(Ljava/nio/file/attribute/PosixFilePermission;)I

    move-result v4

    int-to-long v4, v4

    and-long/2addr v4, p1

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    .line 315
    iget-object v4, p0, Lcom/sshtools/common/sftp/PosixPermissions$PosixPermissionsBuilder;->perms:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public withChmodArgumentString(Ljava/lang/String;)Lcom/sshtools/common/sftp/PosixPermissions$PosixPermissionsBuilder;
    .locals 14

    .line 340
    const-string v0, "\\d+"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 341
    invoke-virtual {p0, p1}, Lcom/sshtools/common/sftp/PosixPermissions$PosixPermissionsBuilder;->fromMaskString(Ljava/lang/String;)Lcom/sshtools/common/sftp/PosixPermissions$PosixPermissionsBuilder;

    move-result-object p1

    return-object p1

    .line 344
    :cond_0
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1d

    aget-object v3, p1, v2

    .line 345
    const-string v4, "u="

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    const/16 v6, 0x78

    const/16 v7, 0x77

    const/16 v8, 0x72

    const/4 v9, 0x3

    const-string v10, "\'"

    const-string v11, "u-"

    const/4 v12, 0x2

    const/4 v13, 0x1

    if-nez v5, :cond_14

    const-string v5, "u+"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_14

    invoke-virtual {v3, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto/16 :goto_7

    .line 374
    :cond_1
    const-string v4, "g="

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    const-string v11, "g-"

    if-nez v5, :cond_c

    const-string v5, "g+"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_c

    invoke-virtual {v3, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto/16 :goto_4

    .line 403
    :cond_2
    const-string v4, "o="

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    const-string v11, "o-"

    if-nez v5, :cond_4

    const-string v5, "o+"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v3, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_1

    .line 433
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown scope \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 404
    :cond_4
    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 405
    iget-object v4, p0, Lcom/sshtools/common/sftp/PosixPermissions$PosixPermissionsBuilder;->perms:Ljava/util/Set;

    new-array v5, v9, [Ljava/nio/file/attribute/PosixFilePermission;

    sget-object v9, Ljava/nio/file/attribute/PosixFilePermission;->OTHERS_READ:Ljava/nio/file/attribute/PosixFilePermission;

    aput-object v9, v5, v1

    sget-object v9, Ljava/nio/file/attribute/PosixFilePermission;->OTHERS_WRITE:Ljava/nio/file/attribute/PosixFilePermission;

    aput-object v9, v5, v13

    sget-object v9, Ljava/nio/file/attribute/PosixFilePermission;->OTHERS_EXECUTE:Ljava/nio/file/attribute/PosixFilePermission;

    aput-object v9, v5, v12

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 407
    :cond_5
    invoke-virtual {v3, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    array-length v5, v4

    move v9, v1

    :goto_2
    if-ge v9, v5, :cond_1c

    aget-char v12, v4, v9

    if-eq v12, v8, :cond_a

    if-eq v12, v7, :cond_8

    if-ne v12, v6, :cond_7

    .line 422
    invoke-virtual {v3, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 423
    iget-object v12, p0, Lcom/sshtools/common/sftp/PosixPermissions$PosixPermissionsBuilder;->perms:Ljava/util/Set;

    sget-object v13, Ljava/nio/file/attribute/PosixFilePermission;->OTHERS_EXECUTE:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-interface {v12, v13}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_3

    .line 425
    :cond_6
    iget-object v12, p0, Lcom/sshtools/common/sftp/PosixPermissions$PosixPermissionsBuilder;->perms:Ljava/util/Set;

    sget-object v13, Ljava/nio/file/attribute/PosixFilePermission;->OTHERS_EXECUTE:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-interface {v12, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 428
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown others mode \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 416
    :cond_8
    invoke-virtual {v3, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 417
    iget-object v12, p0, Lcom/sshtools/common/sftp/PosixPermissions$PosixPermissionsBuilder;->perms:Ljava/util/Set;

    sget-object v13, Ljava/nio/file/attribute/PosixFilePermission;->OTHERS_WRITE:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-interface {v12, v13}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_3

    .line 419
    :cond_9
    iget-object v12, p0, Lcom/sshtools/common/sftp/PosixPermissions$PosixPermissionsBuilder;->perms:Ljava/util/Set;

    sget-object v13, Ljava/nio/file/attribute/PosixFilePermission;->OTHERS_WRITE:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-interface {v12, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 410
    :cond_a
    invoke-virtual {v3, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 411
    iget-object v12, p0, Lcom/sshtools/common/sftp/PosixPermissions$PosixPermissionsBuilder;->perms:Ljava/util/Set;

    sget-object v13, Ljava/nio/file/attribute/PosixFilePermission;->OTHERS_READ:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-interface {v12, v13}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_3

    .line 413
    :cond_b
    iget-object v12, p0, Lcom/sshtools/common/sftp/PosixPermissions$PosixPermissionsBuilder;->perms:Ljava/util/Set;

    sget-object v13, Ljava/nio/file/attribute/PosixFilePermission;->OTHERS_READ:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-interface {v12, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 375
    :cond_c
    :goto_4
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 376
    iget-object v4, p0, Lcom/sshtools/common/sftp/PosixPermissions$PosixPermissionsBuilder;->perms:Ljava/util/Set;

    new-array v5, v9, [Ljava/nio/file/attribute/PosixFilePermission;

    sget-object v9, Ljava/nio/file/attribute/PosixFilePermission;->GROUP_READ:Ljava/nio/file/attribute/PosixFilePermission;

    aput-object v9, v5, v1

    sget-object v9, Ljava/nio/file/attribute/PosixFilePermission;->GROUP_WRITE:Ljava/nio/file/attribute/PosixFilePermission;

    aput-object v9, v5, v13

    sget-object v9, Ljava/nio/file/attribute/PosixFilePermission;->GROUP_EXECUTE:Ljava/nio/file/attribute/PosixFilePermission;

    aput-object v9, v5, v12

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 378
    :cond_d
    invoke-virtual {v3, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    array-length v5, v4

    move v9, v1

    :goto_5
    if-ge v9, v5, :cond_1c

    aget-char v12, v4, v9

    if-eq v12, v8, :cond_12

    if-eq v12, v7, :cond_10

    if-ne v12, v6, :cond_f

    .line 393
    invoke-virtual {v3, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_e

    .line 394
    iget-object v12, p0, Lcom/sshtools/common/sftp/PosixPermissions$PosixPermissionsBuilder;->perms:Ljava/util/Set;

    sget-object v13, Ljava/nio/file/attribute/PosixFilePermission;->GROUP_EXECUTE:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-interface {v12, v13}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_6

    .line 396
    :cond_e
    iget-object v12, p0, Lcom/sshtools/common/sftp/PosixPermissions$PosixPermissionsBuilder;->perms:Ljava/util/Set;

    sget-object v13, Ljava/nio/file/attribute/PosixFilePermission;->GROUP_EXECUTE:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-interface {v12, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 399
    :cond_f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown group mode \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 387
    :cond_10
    invoke-virtual {v3, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_11

    .line 388
    iget-object v12, p0, Lcom/sshtools/common/sftp/PosixPermissions$PosixPermissionsBuilder;->perms:Ljava/util/Set;

    sget-object v13, Ljava/nio/file/attribute/PosixFilePermission;->GROUP_WRITE:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-interface {v12, v13}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_6

    .line 390
    :cond_11
    iget-object v12, p0, Lcom/sshtools/common/sftp/PosixPermissions$PosixPermissionsBuilder;->perms:Ljava/util/Set;

    sget-object v13, Ljava/nio/file/attribute/PosixFilePermission;->GROUP_WRITE:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-interface {v12, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 381
    :cond_12
    invoke-virtual {v3, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_13

    .line 382
    iget-object v12, p0, Lcom/sshtools/common/sftp/PosixPermissions$PosixPermissionsBuilder;->perms:Ljava/util/Set;

    sget-object v13, Ljava/nio/file/attribute/PosixFilePermission;->GROUP_READ:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-interface {v12, v13}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_6

    .line 384
    :cond_13
    iget-object v12, p0, Lcom/sshtools/common/sftp/PosixPermissions$PosixPermissionsBuilder;->perms:Ljava/util/Set;

    sget-object v13, Ljava/nio/file/attribute/PosixFilePermission;->GROUP_READ:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-interface {v12, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 346
    :cond_14
    :goto_7
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 347
    iget-object v4, p0, Lcom/sshtools/common/sftp/PosixPermissions$PosixPermissionsBuilder;->perms:Ljava/util/Set;

    new-array v5, v9, [Ljava/nio/file/attribute/PosixFilePermission;

    sget-object v9, Ljava/nio/file/attribute/PosixFilePermission;->OWNER_READ:Ljava/nio/file/attribute/PosixFilePermission;

    aput-object v9, v5, v1

    sget-object v9, Ljava/nio/file/attribute/PosixFilePermission;->OWNER_WRITE:Ljava/nio/file/attribute/PosixFilePermission;

    aput-object v9, v5, v13

    sget-object v9, Ljava/nio/file/attribute/PosixFilePermission;->OWNER_EXECUTE:Ljava/nio/file/attribute/PosixFilePermission;

    aput-object v9, v5, v12

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 349
    :cond_15
    invoke-virtual {v3, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    array-length v5, v4

    move v9, v1

    :goto_8
    if-ge v9, v5, :cond_1c

    aget-char v12, v4, v9

    if-eq v12, v8, :cond_1a

    if-eq v12, v7, :cond_18

    if-ne v12, v6, :cond_17

    .line 364
    invoke-virtual {v3, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_16

    .line 365
    iget-object v12, p0, Lcom/sshtools/common/sftp/PosixPermissions$PosixPermissionsBuilder;->perms:Ljava/util/Set;

    sget-object v13, Ljava/nio/file/attribute/PosixFilePermission;->OWNER_EXECUTE:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-interface {v12, v13}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_9

    .line 367
    :cond_16
    iget-object v12, p0, Lcom/sshtools/common/sftp/PosixPermissions$PosixPermissionsBuilder;->perms:Ljava/util/Set;

    sget-object v13, Ljava/nio/file/attribute/PosixFilePermission;->OWNER_EXECUTE:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-interface {v12, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 370
    :cond_17
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown user mode \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 358
    :cond_18
    invoke-virtual {v3, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_19

    .line 359
    iget-object v12, p0, Lcom/sshtools/common/sftp/PosixPermissions$PosixPermissionsBuilder;->perms:Ljava/util/Set;

    sget-object v13, Ljava/nio/file/attribute/PosixFilePermission;->OWNER_WRITE:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-interface {v12, v13}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_9

    .line 361
    :cond_19
    iget-object v12, p0, Lcom/sshtools/common/sftp/PosixPermissions$PosixPermissionsBuilder;->perms:Ljava/util/Set;

    sget-object v13, Ljava/nio/file/attribute/PosixFilePermission;->OWNER_WRITE:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-interface {v12, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 352
    :cond_1a
    invoke-virtual {v3, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1b

    .line 353
    iget-object v12, p0, Lcom/sshtools/common/sftp/PosixPermissions$PosixPermissionsBuilder;->perms:Ljava/util/Set;

    sget-object v13, Ljava/nio/file/attribute/PosixFilePermission;->OWNER_READ:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-interface {v12, v13}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_9

    .line 355
    :cond_1b
    iget-object v12, p0, Lcom/sshtools/common/sftp/PosixPermissions$PosixPermissionsBuilder;->perms:Ljava/util/Set;

    sget-object v13, Ljava/nio/file/attribute/PosixFilePermission;->OWNER_READ:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-interface {v12, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_9
    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_1d
    return-object p0
.end method

.method public withPermissions(Ljava/util/Collection;)Lcom/sshtools/common/sftp/PosixPermissions$PosixPermissionsBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/nio/file/attribute/PosixFilePermission;",
            ">;)",
            "Lcom/sshtools/common/sftp/PosixPermissions$PosixPermissionsBuilder;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 532
    new-array v0, v0, [Ljava/nio/file/attribute/PosixFilePermission;

    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/nio/file/attribute/PosixFilePermission;

    invoke-virtual {p0, p1}, Lcom/sshtools/common/sftp/PosixPermissions$PosixPermissionsBuilder;->withPermissions([Ljava/nio/file/attribute/PosixFilePermission;)Lcom/sshtools/common/sftp/PosixPermissions$PosixPermissionsBuilder;

    move-result-object p1

    return-object p1
.end method

.method public varargs withPermissions([Ljava/nio/file/attribute/PosixFilePermission;)Lcom/sshtools/common/sftp/PosixPermissions$PosixPermissionsBuilder;
    .locals 1

    .line 542
    iget-object v0, p0, Lcom/sshtools/common/sftp/PosixPermissions$PosixPermissionsBuilder;->perms:Ljava/util/Set;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public withoutBitmaskFlags(J)Lcom/sshtools/common/sftp/PosixPermissions$PosixPermissionsBuilder;
    .locals 8

    .line 449
    invoke-static {}, Ljava/nio/file/attribute/PosixFilePermission;->values()[Ljava/nio/file/attribute/PosixFilePermission;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 450
    invoke-static {v3}, Lcom/sshtools/common/sftp/PosixPermissions;->toMask(Ljava/nio/file/attribute/PosixFilePermission;)I

    move-result v4

    int-to-long v4, v4

    and-long/2addr v4, p1

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    .line 451
    iget-object v4, p0, Lcom/sshtools/common/sftp/PosixPermissions$PosixPermissionsBuilder;->perms:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public withoutExecutePermissions()Lcom/sshtools/common/sftp/PosixPermissions$PosixPermissionsBuilder;
    .locals 4

    .line 463
    iget-object v0, p0, Lcom/sshtools/common/sftp/PosixPermissions$PosixPermissionsBuilder;->perms:Ljava/util/Set;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/nio/file/attribute/PosixFilePermission;

    const/4 v2, 0x0

    sget-object v3, Ljava/nio/file/attribute/PosixFilePermission;->OWNER_EXECUTE:Ljava/nio/file/attribute/PosixFilePermission;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Ljava/nio/file/attribute/PosixFilePermission;->GROUP_EXECUTE:Ljava/nio/file/attribute/PosixFilePermission;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Ljava/nio/file/attribute/PosixFilePermission;->OTHERS_EXECUTE:Ljava/nio/file/attribute/PosixFilePermission;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public withoutGroupOtherPermissions()Lcom/sshtools/common/sftp/PosixPermissions$PosixPermissionsBuilder;
    .locals 4

    .line 474
    iget-object v0, p0, Lcom/sshtools/common/sftp/PosixPermissions$PosixPermissionsBuilder;->perms:Ljava/util/Set;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/nio/file/attribute/PosixFilePermission;

    const/4 v2, 0x0

    sget-object v3, Ljava/nio/file/attribute/PosixFilePermission;->GROUP_READ:Ljava/nio/file/attribute/PosixFilePermission;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Ljava/nio/file/attribute/PosixFilePermission;->GROUP_WRITE:Ljava/nio/file/attribute/PosixFilePermission;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Ljava/nio/file/attribute/PosixFilePermission;->GROUP_EXECUTE:Ljava/nio/file/attribute/PosixFilePermission;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    sget-object v3, Ljava/nio/file/attribute/PosixFilePermission;->OTHERS_READ:Ljava/nio/file/attribute/PosixFilePermission;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    sget-object v3, Ljava/nio/file/attribute/PosixFilePermission;->OTHERS_WRITE:Ljava/nio/file/attribute/PosixFilePermission;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    sget-object v3, Ljava/nio/file/attribute/PosixFilePermission;->OTHERS_EXECUTE:Ljava/nio/file/attribute/PosixFilePermission;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public withoutOtherPermissions()Lcom/sshtools/common/sftp/PosixPermissions$PosixPermissionsBuilder;
    .locals 4

    .line 486
    iget-object v0, p0, Lcom/sshtools/common/sftp/PosixPermissions$PosixPermissionsBuilder;->perms:Ljava/util/Set;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/nio/file/attribute/PosixFilePermission;

    const/4 v2, 0x0

    sget-object v3, Ljava/nio/file/attribute/PosixFilePermission;->OTHERS_READ:Ljava/nio/file/attribute/PosixFilePermission;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Ljava/nio/file/attribute/PosixFilePermission;->OTHERS_WRITE:Ljava/nio/file/attribute/PosixFilePermission;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Ljava/nio/file/attribute/PosixFilePermission;->OTHERS_EXECUTE:Ljava/nio/file/attribute/PosixFilePermission;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public withoutPermissions(Ljava/util/Collection;)Lcom/sshtools/common/sftp/PosixPermissions$PosixPermissionsBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/nio/file/attribute/PosixFilePermission;",
            ">;)",
            "Lcom/sshtools/common/sftp/PosixPermissions$PosixPermissionsBuilder;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 499
    new-array v0, v0, [Ljava/nio/file/attribute/PosixFilePermission;

    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/nio/file/attribute/PosixFilePermission;

    invoke-virtual {p0, p1}, Lcom/sshtools/common/sftp/PosixPermissions$PosixPermissionsBuilder;->withoutPermissions([Ljava/nio/file/attribute/PosixFilePermission;)Lcom/sshtools/common/sftp/PosixPermissions$PosixPermissionsBuilder;

    move-result-object p1

    return-object p1
.end method

.method public varargs withoutPermissions([Ljava/nio/file/attribute/PosixFilePermission;)Lcom/sshtools/common/sftp/PosixPermissions$PosixPermissionsBuilder;
    .locals 1

    .line 510
    iget-object v0, p0, Lcom/sshtools/common/sftp/PosixPermissions$PosixPermissionsBuilder;->perms:Ljava/util/Set;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public withoutWritePermissions()Lcom/sshtools/common/sftp/PosixPermissions$PosixPermissionsBuilder;
    .locals 4

    .line 520
    iget-object v0, p0, Lcom/sshtools/common/sftp/PosixPermissions$PosixPermissionsBuilder;->perms:Ljava/util/Set;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/nio/file/attribute/PosixFilePermission;

    const/4 v2, 0x0

    sget-object v3, Ljava/nio/file/attribute/PosixFilePermission;->OWNER_WRITE:Ljava/nio/file/attribute/PosixFilePermission;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Ljava/nio/file/attribute/PosixFilePermission;->GROUP_WRITE:Ljava/nio/file/attribute/PosixFilePermission;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Ljava/nio/file/attribute/PosixFilePermission;->OTHERS_WRITE:Ljava/nio/file/attribute/PosixFilePermission;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    return-object p0
.end method
