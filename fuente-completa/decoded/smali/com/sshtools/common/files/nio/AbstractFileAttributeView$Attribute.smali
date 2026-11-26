.class final enum Lcom/sshtools/common/files/nio/AbstractFileAttributeView$Attribute;
.super Ljava/lang/Enum;
.source "AbstractFileAttributeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sshtools/common/files/nio/AbstractFileAttributeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Attribute"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sshtools/common/files/nio/AbstractFileAttributeView$Attribute;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sshtools/common/files/nio/AbstractFileAttributeView$Attribute;

.field public static final enum attributes:Lcom/sshtools/common/files/nio/AbstractFileAttributeView$Attribute;

.field public static final enum certificates:Lcom/sshtools/common/files/nio/AbstractFileAttributeView$Attribute;

.field public static final enum contentEncoding:Lcom/sshtools/common/files/nio/AbstractFileAttributeView$Attribute;

.field public static final enum contentType:Lcom/sshtools/common/files/nio/AbstractFileAttributeView$Attribute;

.field public static final enum creationTime:Lcom/sshtools/common/files/nio/AbstractFileAttributeView$Attribute;

.field public static final enum fileKey:Lcom/sshtools/common/files/nio/AbstractFileAttributeView$Attribute;

.field public static final enum isDirectory:Lcom/sshtools/common/files/nio/AbstractFileAttributeView$Attribute;

.field public static final enum isOther:Lcom/sshtools/common/files/nio/AbstractFileAttributeView$Attribute;

.field public static final enum isRegularFile:Lcom/sshtools/common/files/nio/AbstractFileAttributeView$Attribute;

.field public static final enum isSymbolicLink:Lcom/sshtools/common/files/nio/AbstractFileAttributeView$Attribute;

.field public static final enum lastAccessTime:Lcom/sshtools/common/files/nio/AbstractFileAttributeView$Attribute;

.field public static final enum lastModifiedTime:Lcom/sshtools/common/files/nio/AbstractFileAttributeView$Attribute;

.field public static final enum size:Lcom/sshtools/common/files/nio/AbstractFileAttributeView$Attribute;


# direct methods
.method private static synthetic $values()[Lcom/sshtools/common/files/nio/AbstractFileAttributeView$Attribute;
    .locals 13

    .line 32
    sget-object v0, Lcom/sshtools/common/files/nio/AbstractFileAttributeView$Attribute;->attributes:Lcom/sshtools/common/files/nio/AbstractFileAttributeView$Attribute;

    sget-object v1, Lcom/sshtools/common/files/nio/AbstractFileAttributeView$Attribute;->certificates:Lcom/sshtools/common/files/nio/AbstractFileAttributeView$Attribute;

    sget-object v2, Lcom/sshtools/common/files/nio/AbstractFileAttributeView$Attribute;->contentEncoding:Lcom/sshtools/common/files/nio/AbstractFileAttributeView$Attribute;

    sget-object v3, Lcom/sshtools/common/files/nio/AbstractFileAttributeView$Attribute;->contentType:Lcom/sshtools/common/files/nio/AbstractFileAttributeView$Attribute;

    sget-object v4, Lcom/sshtools/common/files/nio/AbstractFileAttributeView$Attribute;->creationTime:Lcom/sshtools/common/files/nio/AbstractFileAttributeView$Attribute;

    sget-object v5, Lcom/sshtools/common/files/nio/AbstractFileAttributeView$Attribute;->fileKey:Lcom/sshtools/common/files/nio/AbstractFileAttributeView$Attribute;

    sget-object v6, Lcom/sshtools/common/files/nio/AbstractFileAttributeView$Attribute;->isDirectory:Lcom/sshtools/common/files/nio/AbstractFileAttributeView$Attribute;

    sget-object v7, Lcom/sshtools/common/files/nio/AbstractFileAttributeView$Attribute;->isOther:Lcom/sshtools/common/files/nio/AbstractFileAttributeView$Attribute;

    sget-object v8, Lcom/sshtools/common/files/nio/AbstractFileAttributeView$Attribute;->isRegularFile:Lcom/sshtools/common/files/nio/AbstractFileAttributeView$Attribute;

    sget-object v9, Lcom/sshtools/common/files/nio/AbstractFileAttributeView$Attribute;->isSymbolicLink:Lcom/sshtools/common/files/nio/AbstractFileAttributeView$Attribute;

    sget-object v10, Lcom/sshtools/common/files/nio/AbstractFileAttributeView$Attribute;->lastAccessTime:Lcom/sshtools/common/files/nio/AbstractFileAttributeView$Attribute;

    sget-object v11, Lcom/sshtools/common/files/nio/AbstractFileAttributeView$Attribute;->lastModifiedTime:Lcom/sshtools/common/files/nio/AbstractFileAttributeView$Attribute;

    sget-object v12, Lcom/sshtools/common/files/nio/AbstractFileAttributeView$Attribute;->size:Lcom/sshtools/common/files/nio/AbstractFileAttributeView$Attribute;

    filled-new-array/range {v0 .. v12}, [Lcom/sshtools/common/files/nio/AbstractFileAttributeView$Attribute;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 33
    new-instance v0, Lcom/sshtools/common/files/nio/AbstractFileAttributeView$Attribute;

    const-string v1, "attributes"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sshtools/common/files/nio/AbstractFileAttributeView$Attribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sshtools/common/files/nio/AbstractFileAttributeView$Attribute;->attributes:Lcom/sshtools/common/files/nio/AbstractFileAttributeView$Attribute;

    new-instance v0, Lcom/sshtools/common/files/nio/AbstractFileAttributeView$Attribute;

    const-string v1, "certificates"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sshtools/common/files/nio/AbstractFileAttributeView$Attribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sshtools/common/files/nio/AbstractFileAttributeView$Attribute;->certificates:Lcom/sshtools/common/files/nio/AbstractFileAttributeView$Attribute;

    new-instance v0, Lcom/sshtools/common/files/nio/AbstractFileAttributeView$Attribute;

    const-string v1, "contentEncoding"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sshtools/common/files/nio/AbstractFileAttributeView$Attribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sshtools/common/files/nio/AbstractFileAttributeView$Attribute;->contentEncoding:Lcom/sshtools/common/files/nio/AbstractFileAttributeView$Attribute;

    new-instance v0, Lcom/sshtools/common/files/nio/AbstractFileAttributeView$Attribute;

    const-string v1, "contentType"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/sshtools/common/files/nio/AbstractFileAttributeView$Attribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sshtools/common/files/nio/AbstractFileAttributeView$Attribute;->contentType:Lcom/sshtools/common/files/nio/AbstractFileAttributeView$Attribute;

    new-instance v0, Lcom/sshtools/common/files/nio/AbstractFileAttributeView$Attribute;

    const-string v1, "creationTime"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/sshtools/common/files/nio/AbstractFileAttributeView$Attribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sshtools/common/files/nio/AbstractFileAttributeView$Attribute;->creationTime:Lcom/sshtools/common/files/nio/AbstractFileAttributeView$Attribute;

    new-instance v0, Lcom/sshtools/common/files/nio/AbstractFileAttributeView$Attribute;

    const-string v1, "fileKey"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sshtools/common/files/nio/AbstractFileAttributeView$Attribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sshtools/common/files/nio/AbstractFileAttributeView$Attribute;->fileKey:Lcom/sshtools/common/files/nio/AbstractFileAttributeView$Attribute;

    new-instance v0, Lcom/sshtools/common/files/nio/AbstractFileAttributeView$Attribute;

    const-string v1, "isDirectory"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/sshtools/common/files/nio/AbstractFileAttributeView$Attribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sshtools/common/files/nio/AbstractFileAttributeView$Attribute;->isDirectory:Lcom/sshtools/common/files/nio/AbstractFileAttributeView$Attribute;

    new-instance v0, Lcom/sshtools/common/files/nio/AbstractFileAttributeView$Attribute;

    const-string v1, "isOther"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/sshtools/common/files/nio/AbstractFileAttributeView$Attribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sshtools/common/files/nio/AbstractFileAttributeView$Attribute;->isOther:Lcom/sshtools/common/files/nio/AbstractFileAttributeView$Attribute;

    new-instance v0, Lcom/sshtools/common/files/nio/AbstractFileAttributeView$Attribute;

    const-string v1, "isRegularFile"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/sshtools/common/files/nio/AbstractFileAttributeView$Attribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sshtools/common/files/nio/AbstractFileAttributeView$Attribute;->isRegularFile:Lcom/sshtools/common/files/nio/AbstractFileAttributeView$Attribute;

    new-instance v0, Lcom/sshtools/common/files/nio/AbstractFileAttributeView$Attribute;

    const-string v1, "isSymbolicLink"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/sshtools/common/files/nio/AbstractFileAttributeView$Attribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sshtools/common/files/nio/AbstractFileAttributeView$Attribute;->isSymbolicLink:Lcom/sshtools/common/files/nio/AbstractFileAttributeView$Attribute;

    new-instance v0, Lcom/sshtools/common/files/nio/AbstractFileAttributeView$Attribute;

    const-string v1, "lastAccessTime"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/sshtools/common/files/nio/AbstractFileAttributeView$Attribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sshtools/common/files/nio/AbstractFileAttributeView$Attribute;->lastAccessTime:Lcom/sshtools/common/files/nio/AbstractFileAttributeView$Attribute;

    new-instance v0, Lcom/sshtools/common/files/nio/AbstractFileAttributeView$Attribute;

    const-string v1, "lastModifiedTime"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/sshtools/common/files/nio/AbstractFileAttributeView$Attribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sshtools/common/files/nio/AbstractFileAttributeView$Attribute;->lastModifiedTime:Lcom/sshtools/common/files/nio/AbstractFileAttributeView$Attribute;

    new-instance v0, Lcom/sshtools/common/files/nio/AbstractFileAttributeView$Attribute;

    const-string v1, "size"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/sshtools/common/files/nio/AbstractFileAttributeView$Attribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sshtools/common/files/nio/AbstractFileAttributeView$Attribute;->size:Lcom/sshtools/common/files/nio/AbstractFileAttributeView$Attribute;

    .line 32
    invoke-static {}, Lcom/sshtools/common/files/nio/AbstractFileAttributeView$Attribute;->$values()[Lcom/sshtools/common/files/nio/AbstractFileAttributeView$Attribute;

    move-result-object v0

    sput-object v0, Lcom/sshtools/common/files/nio/AbstractFileAttributeView$Attribute;->$VALUES:[Lcom/sshtools/common/files/nio/AbstractFileAttributeView$Attribute;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sshtools/common/files/nio/AbstractFileAttributeView$Attribute;
    .locals 1

    .line 32
    const-class v0, Lcom/sshtools/common/files/nio/AbstractFileAttributeView$Attribute;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sshtools/common/files/nio/AbstractFileAttributeView$Attribute;

    return-object p0
.end method

.method public static values()[Lcom/sshtools/common/files/nio/AbstractFileAttributeView$Attribute;
    .locals 1

    .line 32
    sget-object v0, Lcom/sshtools/common/files/nio/AbstractFileAttributeView$Attribute;->$VALUES:[Lcom/sshtools/common/files/nio/AbstractFileAttributeView$Attribute;

    invoke-virtual {v0}, [Lcom/sshtools/common/files/nio/AbstractFileAttributeView$Attribute;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sshtools/common/files/nio/AbstractFileAttributeView$Attribute;

    return-object v0
.end method
