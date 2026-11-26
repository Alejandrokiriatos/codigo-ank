.class synthetic Lcom/sshtools/common/files/nio/AbstractFileNIOProvider$1;
.super Ljava/lang/Object;
.source "AbstractFileNIOProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sshtools/common/files/nio/AbstractFileNIOProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$java$nio$file$AccessMode:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 232
    invoke-static {}, Ljava/nio/file/AccessMode;->values()[Ljava/nio/file/AccessMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sshtools/common/files/nio/AbstractFileNIOProvider$1;->$SwitchMap$java$nio$file$AccessMode:[I

    :try_start_0
    sget-object v1, Ljava/nio/file/AccessMode;->READ:Ljava/nio/file/AccessMode;

    invoke-virtual {v1}, Ljava/nio/file/AccessMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/sshtools/common/files/nio/AbstractFileNIOProvider$1;->$SwitchMap$java$nio$file$AccessMode:[I

    sget-object v1, Ljava/nio/file/AccessMode;->WRITE:Ljava/nio/file/AccessMode;

    invoke-virtual {v1}, Ljava/nio/file/AccessMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
