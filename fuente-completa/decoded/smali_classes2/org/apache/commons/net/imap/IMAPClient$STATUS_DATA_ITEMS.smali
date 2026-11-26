.class public final enum Lorg/apache/commons/net/imap/IMAPClient$STATUS_DATA_ITEMS;
.super Ljava/lang/Enum;
.source "IMAPClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/net/imap/IMAPClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "STATUS_DATA_ITEMS"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/commons/net/imap/IMAPClient$STATUS_DATA_ITEMS;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/commons/net/imap/IMAPClient$STATUS_DATA_ITEMS;

.field public static final enum MESSAGES:Lorg/apache/commons/net/imap/IMAPClient$STATUS_DATA_ITEMS;

.field public static final enum RECENT:Lorg/apache/commons/net/imap/IMAPClient$STATUS_DATA_ITEMS;

.field public static final enum UIDNEXT:Lorg/apache/commons/net/imap/IMAPClient$STATUS_DATA_ITEMS;

.field public static final enum UIDVALIDITY:Lorg/apache/commons/net/imap/IMAPClient$STATUS_DATA_ITEMS;

.field public static final enum UNSEEN:Lorg/apache/commons/net/imap/IMAPClient$STATUS_DATA_ITEMS;


# direct methods
.method private static synthetic $values()[Lorg/apache/commons/net/imap/IMAPClient$STATUS_DATA_ITEMS;
    .locals 5

    .line 174
    sget-object v0, Lorg/apache/commons/net/imap/IMAPClient$STATUS_DATA_ITEMS;->MESSAGES:Lorg/apache/commons/net/imap/IMAPClient$STATUS_DATA_ITEMS;

    sget-object v1, Lorg/apache/commons/net/imap/IMAPClient$STATUS_DATA_ITEMS;->RECENT:Lorg/apache/commons/net/imap/IMAPClient$STATUS_DATA_ITEMS;

    sget-object v2, Lorg/apache/commons/net/imap/IMAPClient$STATUS_DATA_ITEMS;->UIDNEXT:Lorg/apache/commons/net/imap/IMAPClient$STATUS_DATA_ITEMS;

    sget-object v3, Lorg/apache/commons/net/imap/IMAPClient$STATUS_DATA_ITEMS;->UIDVALIDITY:Lorg/apache/commons/net/imap/IMAPClient$STATUS_DATA_ITEMS;

    sget-object v4, Lorg/apache/commons/net/imap/IMAPClient$STATUS_DATA_ITEMS;->UNSEEN:Lorg/apache/commons/net/imap/IMAPClient$STATUS_DATA_ITEMS;

    filled-new-array {v0, v1, v2, v3, v4}, [Lorg/apache/commons/net/imap/IMAPClient$STATUS_DATA_ITEMS;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 176
    new-instance v0, Lorg/apache/commons/net/imap/IMAPClient$STATUS_DATA_ITEMS;

    const-string v1, "MESSAGES"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/net/imap/IMAPClient$STATUS_DATA_ITEMS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/net/imap/IMAPClient$STATUS_DATA_ITEMS;->MESSAGES:Lorg/apache/commons/net/imap/IMAPClient$STATUS_DATA_ITEMS;

    .line 178
    new-instance v0, Lorg/apache/commons/net/imap/IMAPClient$STATUS_DATA_ITEMS;

    const-string v1, "RECENT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/net/imap/IMAPClient$STATUS_DATA_ITEMS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/net/imap/IMAPClient$STATUS_DATA_ITEMS;->RECENT:Lorg/apache/commons/net/imap/IMAPClient$STATUS_DATA_ITEMS;

    .line 180
    new-instance v0, Lorg/apache/commons/net/imap/IMAPClient$STATUS_DATA_ITEMS;

    const-string v1, "UIDNEXT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/net/imap/IMAPClient$STATUS_DATA_ITEMS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/net/imap/IMAPClient$STATUS_DATA_ITEMS;->UIDNEXT:Lorg/apache/commons/net/imap/IMAPClient$STATUS_DATA_ITEMS;

    .line 182
    new-instance v0, Lorg/apache/commons/net/imap/IMAPClient$STATUS_DATA_ITEMS;

    const-string v1, "UIDVALIDITY"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/net/imap/IMAPClient$STATUS_DATA_ITEMS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/net/imap/IMAPClient$STATUS_DATA_ITEMS;->UIDVALIDITY:Lorg/apache/commons/net/imap/IMAPClient$STATUS_DATA_ITEMS;

    .line 184
    new-instance v0, Lorg/apache/commons/net/imap/IMAPClient$STATUS_DATA_ITEMS;

    const-string v1, "UNSEEN"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/net/imap/IMAPClient$STATUS_DATA_ITEMS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/net/imap/IMAPClient$STATUS_DATA_ITEMS;->UNSEEN:Lorg/apache/commons/net/imap/IMAPClient$STATUS_DATA_ITEMS;

    .line 174
    invoke-static {}, Lorg/apache/commons/net/imap/IMAPClient$STATUS_DATA_ITEMS;->$values()[Lorg/apache/commons/net/imap/IMAPClient$STATUS_DATA_ITEMS;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/net/imap/IMAPClient$STATUS_DATA_ITEMS;->$VALUES:[Lorg/apache/commons/net/imap/IMAPClient$STATUS_DATA_ITEMS;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 174
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/net/imap/IMAPClient$STATUS_DATA_ITEMS;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 174
    const-class v0, Lorg/apache/commons/net/imap/IMAPClient$STATUS_DATA_ITEMS;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/net/imap/IMAPClient$STATUS_DATA_ITEMS;

    return-object p0
.end method

.method public static values()[Lorg/apache/commons/net/imap/IMAPClient$STATUS_DATA_ITEMS;
    .locals 1

    .line 174
    sget-object v0, Lorg/apache/commons/net/imap/IMAPClient$STATUS_DATA_ITEMS;->$VALUES:[Lorg/apache/commons/net/imap/IMAPClient$STATUS_DATA_ITEMS;

    invoke-virtual {v0}, [Lorg/apache/commons/net/imap/IMAPClient$STATUS_DATA_ITEMS;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/net/imap/IMAPClient$STATUS_DATA_ITEMS;

    return-object v0
.end method
