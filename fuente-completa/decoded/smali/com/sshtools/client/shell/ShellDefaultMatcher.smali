.class public Lcom/sshtools/client/shell/ShellDefaultMatcher;
.super Ljava/lang/Object;
.source "ShellDefaultMatcher.java"

# interfaces
.implements Lcom/sshtools/client/shell/ShellMatcher;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public matches(Ljava/lang/String;Ljava/lang/String;)Lcom/sshtools/client/shell/ShellMatcher$Continue;
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 30
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 31
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    move v2, v0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    .line 34
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-ne p2, p1, :cond_2

    .line 35
    sget-object p1, Lcom/sshtools/client/shell/ShellMatcher$Continue;->CONTENT_MATCHES:Lcom/sshtools/client/shell/ShellMatcher$Continue;

    return-object p1

    :cond_2
    if-eqz v2, :cond_3

    .line 37
    sget-object p1, Lcom/sshtools/client/shell/ShellMatcher$Continue;->MORE_CONTENT_NEEDED:Lcom/sshtools/client/shell/ShellMatcher$Continue;

    return-object p1

    .line 39
    :cond_3
    sget-object p1, Lcom/sshtools/client/shell/ShellMatcher$Continue;->CONTENT_DOES_NOT_MATCH:Lcom/sshtools/client/shell/ShellMatcher$Continue;

    return-object p1
.end method
