.class public final enum Lcom/sshtools/client/sftp/RemoteHash;
.super Ljava/lang/Enum;
.source "RemoteHash.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sshtools/client/sftp/RemoteHash;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sshtools/client/sftp/RemoteHash;

.field public static final enum md5:Lcom/sshtools/client/sftp/RemoteHash;

.field public static final enum sha1:Lcom/sshtools/client/sftp/RemoteHash;

.field public static final enum sha256:Lcom/sshtools/client/sftp/RemoteHash;

.field public static final enum sha512:Lcom/sshtools/client/sftp/RemoteHash;


# direct methods
.method private static synthetic $values()[Lcom/sshtools/client/sftp/RemoteHash;
    .locals 4

    .line 25
    sget-object v0, Lcom/sshtools/client/sftp/RemoteHash;->md5:Lcom/sshtools/client/sftp/RemoteHash;

    sget-object v1, Lcom/sshtools/client/sftp/RemoteHash;->sha1:Lcom/sshtools/client/sftp/RemoteHash;

    sget-object v2, Lcom/sshtools/client/sftp/RemoteHash;->sha256:Lcom/sshtools/client/sftp/RemoteHash;

    sget-object v3, Lcom/sshtools/client/sftp/RemoteHash;->sha512:Lcom/sshtools/client/sftp/RemoteHash;

    filled-new-array {v0, v1, v2, v3}, [Lcom/sshtools/client/sftp/RemoteHash;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 27
    new-instance v0, Lcom/sshtools/client/sftp/RemoteHash;

    const-string v1, "md5"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sshtools/client/sftp/RemoteHash;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sshtools/client/sftp/RemoteHash;->md5:Lcom/sshtools/client/sftp/RemoteHash;

    .line 28
    new-instance v0, Lcom/sshtools/client/sftp/RemoteHash;

    const-string v1, "sha1"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sshtools/client/sftp/RemoteHash;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sshtools/client/sftp/RemoteHash;->sha1:Lcom/sshtools/client/sftp/RemoteHash;

    .line 29
    new-instance v0, Lcom/sshtools/client/sftp/RemoteHash;

    const-string v1, "sha256"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sshtools/client/sftp/RemoteHash;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sshtools/client/sftp/RemoteHash;->sha256:Lcom/sshtools/client/sftp/RemoteHash;

    .line 30
    new-instance v0, Lcom/sshtools/client/sftp/RemoteHash;

    const-string v1, "sha512"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/sshtools/client/sftp/RemoteHash;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sshtools/client/sftp/RemoteHash;->sha512:Lcom/sshtools/client/sftp/RemoteHash;

    .line 25
    invoke-static {}, Lcom/sshtools/client/sftp/RemoteHash;->$values()[Lcom/sshtools/client/sftp/RemoteHash;

    move-result-object v0

    sput-object v0, Lcom/sshtools/client/sftp/RemoteHash;->$VALUES:[Lcom/sshtools/client/sftp/RemoteHash;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sshtools/client/sftp/RemoteHash;
    .locals 1

    .line 25
    const-class v0, Lcom/sshtools/client/sftp/RemoteHash;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sshtools/client/sftp/RemoteHash;

    return-object p0
.end method

.method public static values()[Lcom/sshtools/client/sftp/RemoteHash;
    .locals 1

    .line 25
    sget-object v0, Lcom/sshtools/client/sftp/RemoteHash;->$VALUES:[Lcom/sshtools/client/sftp/RemoteHash;

    invoke-virtual {v0}, [Lcom/sshtools/client/sftp/RemoteHash;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sshtools/client/sftp/RemoteHash;

    return-object v0
.end method
