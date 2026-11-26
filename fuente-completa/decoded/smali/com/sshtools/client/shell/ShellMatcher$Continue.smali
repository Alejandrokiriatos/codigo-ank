.class public final enum Lcom/sshtools/client/shell/ShellMatcher$Continue;
.super Ljava/lang/Enum;
.source "ShellMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sshtools/client/shell/ShellMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Continue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sshtools/client/shell/ShellMatcher$Continue;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sshtools/client/shell/ShellMatcher$Continue;

.field public static final enum CONTENT_DOES_NOT_MATCH:Lcom/sshtools/client/shell/ShellMatcher$Continue;

.field public static final enum CONTENT_MATCHES:Lcom/sshtools/client/shell/ShellMatcher$Continue;

.field public static final enum MORE_CONTENT_NEEDED:Lcom/sshtools/client/shell/ShellMatcher$Continue;


# direct methods
.method private static synthetic $values()[Lcom/sshtools/client/shell/ShellMatcher$Continue;
    .locals 3

    .line 27
    sget-object v0, Lcom/sshtools/client/shell/ShellMatcher$Continue;->MORE_CONTENT_NEEDED:Lcom/sshtools/client/shell/ShellMatcher$Continue;

    sget-object v1, Lcom/sshtools/client/shell/ShellMatcher$Continue;->CONTENT_MATCHES:Lcom/sshtools/client/shell/ShellMatcher$Continue;

    sget-object v2, Lcom/sshtools/client/shell/ShellMatcher$Continue;->CONTENT_DOES_NOT_MATCH:Lcom/sshtools/client/shell/ShellMatcher$Continue;

    filled-new-array {v0, v1, v2}, [Lcom/sshtools/client/shell/ShellMatcher$Continue;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 28
    new-instance v0, Lcom/sshtools/client/shell/ShellMatcher$Continue;

    const-string v1, "MORE_CONTENT_NEEDED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sshtools/client/shell/ShellMatcher$Continue;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sshtools/client/shell/ShellMatcher$Continue;->MORE_CONTENT_NEEDED:Lcom/sshtools/client/shell/ShellMatcher$Continue;

    .line 29
    new-instance v0, Lcom/sshtools/client/shell/ShellMatcher$Continue;

    const-string v1, "CONTENT_MATCHES"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sshtools/client/shell/ShellMatcher$Continue;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sshtools/client/shell/ShellMatcher$Continue;->CONTENT_MATCHES:Lcom/sshtools/client/shell/ShellMatcher$Continue;

    .line 30
    new-instance v0, Lcom/sshtools/client/shell/ShellMatcher$Continue;

    const-string v1, "CONTENT_DOES_NOT_MATCH"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sshtools/client/shell/ShellMatcher$Continue;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sshtools/client/shell/ShellMatcher$Continue;->CONTENT_DOES_NOT_MATCH:Lcom/sshtools/client/shell/ShellMatcher$Continue;

    .line 27
    invoke-static {}, Lcom/sshtools/client/shell/ShellMatcher$Continue;->$values()[Lcom/sshtools/client/shell/ShellMatcher$Continue;

    move-result-object v0

    sput-object v0, Lcom/sshtools/client/shell/ShellMatcher$Continue;->$VALUES:[Lcom/sshtools/client/shell/ShellMatcher$Continue;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sshtools/client/shell/ShellMatcher$Continue;
    .locals 1

    .line 27
    const-class v0, Lcom/sshtools/client/shell/ShellMatcher$Continue;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sshtools/client/shell/ShellMatcher$Continue;

    return-object p0
.end method

.method public static values()[Lcom/sshtools/client/shell/ShellMatcher$Continue;
    .locals 1

    .line 27
    sget-object v0, Lcom/sshtools/client/shell/ShellMatcher$Continue;->$VALUES:[Lcom/sshtools/client/shell/ShellMatcher$Continue;

    invoke-virtual {v0}, [Lcom/sshtools/client/shell/ShellMatcher$Continue;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sshtools/client/shell/ShellMatcher$Continue;

    return-object v0
.end method
