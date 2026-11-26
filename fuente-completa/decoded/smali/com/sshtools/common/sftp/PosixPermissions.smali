.class public final Lcom/sshtools/common/sftp/PosixPermissions;
.super Ljava/lang/Object;
.source "PosixPermissions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sshtools/common/sftp/PosixPermissions$PosixPermissionsBuilder;
    }
.end annotation


# static fields
.field public static final EMPTY:Lcom/sshtools/common/sftp/PosixPermissions;


# instance fields
.field private final mode:I

.field private final perms:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/nio/file/attribute/PosixFilePermission;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetperms(Lcom/sshtools/common/sftp/PosixPermissions;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/sshtools/common/sftp/PosixPermissions;->perms:Ljava/util/Set;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 551
    invoke-static {}, Lcom/sshtools/common/sftp/PosixPermissions$PosixPermissionsBuilder;->create()Lcom/sshtools/common/sftp/PosixPermissions$PosixPermissionsBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sshtools/common/sftp/PosixPermissions$PosixPermissionsBuilder;->build()Lcom/sshtools/common/sftp/PosixPermissions;

    move-result-object v0

    sput-object v0, Lcom/sshtools/common/sftp/PosixPermissions;->EMPTY:Lcom/sshtools/common/sftp/PosixPermissions;

    return-void
.end method

.method private constructor <init>(Lcom/sshtools/common/sftp/PosixPermissions$PosixPermissionsBuilder;)V
    .locals 2

    .line 591
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 592
    invoke-static {p1}, Lcom/sshtools/common/sftp/PosixPermissions$PosixPermissionsBuilder;->-$$Nest$fgetperms(Lcom/sshtools/common/sftp/PosixPermissions$PosixPermissionsBuilder;)Ljava/util/Set;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/sshtools/common/sftp/PosixPermissions;->perms:Ljava/util/Set;

    .line 594
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/file/attribute/PosixFilePermission;

    .line 595
    invoke-static {v1}, Lcom/sshtools/common/sftp/PosixPermissions;->toMask(Ljava/nio/file/attribute/PosixFilePermission;)I

    move-result v1

    or-int/2addr v0, v1

    goto :goto_0

    .line 596
    :cond_0
    iput v0, p0, Lcom/sshtools/common/sftp/PosixPermissions;->mode:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/sshtools/common/sftp/PosixPermissions$PosixPermissionsBuilder;Lcom/sshtools/common/sftp/PosixPermissions-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sshtools/common/sftp/PosixPermissions;-><init>(Lcom/sshtools/common/sftp/PosixPermissions$PosixPermissionsBuilder;)V

    return-void
.end method

.method private static octal(II)I
    .locals 2

    ushr-int/2addr p0, p1

    and-int/lit8 p1, p0, 0x4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    add-int/2addr p1, v1

    const/4 v1, 0x1

    and-int/2addr p0, v1

    if-eqz p0, :cond_2

    move v0, v1

    :cond_2
    add-int/2addr p1, v0

    return p1
.end method

.method public static toMask(Ljava/nio/file/attribute/PosixFilePermission;)I
    .locals 1

    .line 560
    sget-object v0, Lcom/sshtools/common/sftp/PosixPermissions$1;->$SwitchMap$java$nio$file$attribute$PosixFilePermission:[I

    invoke-virtual {p0}, Ljava/nio/file/attribute/PosixFilePermission;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    const/16 p0, 0x100

    return p0

    :pswitch_0
    const/4 p0, 0x1

    return p0

    :pswitch_1
    const/4 p0, 0x2

    return p0

    :pswitch_2
    const/4 p0, 0x4

    return p0

    :pswitch_3
    const/16 p0, 0x8

    return p0

    :pswitch_4
    const/16 p0, 0x10

    return p0

    :pswitch_5
    const/16 p0, 0x20

    return p0

    :pswitch_6
    const/16 p0, 0x40

    return p0

    :pswitch_7
    const/16 p0, 0x80

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public asFileModesString()Ljava/lang/String;
    .locals 1

    .line 607
    iget-object v0, p0, Lcom/sshtools/common/sftp/PosixPermissions;->perms:Ljava/util/Set;

    invoke-static {v0}, Ljava/nio/file/attribute/PosixFilePermissions;->toString(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public asInt()I
    .locals 1

    .line 619
    iget v0, p0, Lcom/sshtools/common/sftp/PosixPermissions;->mode:I

    return v0
.end method

.method public asLong()J
    .locals 2

    .line 629
    iget v0, p0, Lcom/sshtools/common/sftp/PosixPermissions;->mode:I

    invoke-static {v0}, Ljava/lang/Integer;->toUnsignedLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public asMaskString()Ljava/lang/String;
    .locals 3

    .line 640
    invoke-virtual {p0}, Lcom/sshtools/common/sftp/PosixPermissions;->asInt()I

    move-result v0

    .line 641
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "0"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x6

    .line 643
    invoke-static {v0, v2}, Lcom/sshtools/common/sftp/PosixPermissions;->octal(II)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v2, 0x3

    .line 644
    invoke-static {v0, v2}, Lcom/sshtools/common/sftp/PosixPermissions;->octal(II)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    .line 645
    invoke-static {v0, v2}, Lcom/sshtools/common/sftp/PosixPermissions;->octal(II)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 646
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public asPermissions()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/nio/file/attribute/PosixFilePermission;",
            ">;"
        }
    .end annotation

    .line 655
    iget-object v0, p0, Lcom/sshtools/common/sftp/PosixPermissions;->perms:Ljava/util/Set;

    return-object v0
.end method

.method public asUInt32()Lcom/sshtools/common/util/UnsignedInteger32;
    .locals 3

    .line 664
    new-instance v0, Lcom/sshtools/common/util/UnsignedInteger32;

    invoke-virtual {p0}, Lcom/sshtools/common/sftp/PosixPermissions;->asLong()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/sshtools/common/util/UnsignedInteger32;-><init>(J)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 703
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    .line 705
    :cond_2
    check-cast p1, Lcom/sshtools/common/sftp/PosixPermissions;

    .line 706
    iget v2, p0, Lcom/sshtools/common/sftp/PosixPermissions;->mode:I

    iget p1, p1, Lcom/sshtools/common/sftp/PosixPermissions;->mode:I

    if-ne v2, p1, :cond_3

    return v0

    :cond_3
    return v1
.end method

.method public varargs has([Ljava/nio/file/attribute/PosixFilePermission;)Z
    .locals 5

    .line 674
    array-length v0, p1

    if-eqz v0, :cond_2

    .line 676
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 677
    iget-object v4, p0, Lcom/sshtools/common/sftp/PosixPermissions;->perms:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1

    .line 675
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Must provide at least one permission."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public hashCode()I
    .locals 1

    .line 694
    iget v0, p0, Lcom/sshtools/common/sftp/PosixPermissions;->mode:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 689
    iget-object v0, p0, Lcom/sshtools/common/sftp/PosixPermissions;->perms:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 711
    invoke-virtual {p0}, Lcom/sshtools/common/sftp/PosixPermissions;->asFileModesString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sshtools/common/sftp/PosixPermissions;->asMaskString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "PosixPermissions [asFileModesString()="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", asMaskString()="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
