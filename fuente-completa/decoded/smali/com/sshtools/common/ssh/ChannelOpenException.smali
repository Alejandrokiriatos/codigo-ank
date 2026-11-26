.class public Lcom/sshtools/common/ssh/ChannelOpenException;
.super Ljava/lang/Exception;
.source "ChannelOpenException.java"


# static fields
.field public static final ADMINISTRATIVIVELY_PROHIBITED:I = 0x1

.field public static final CONNECT_FAILED:I = 0x2

.field public static final RESOURCE_SHORTAGE:I = 0x4

.field public static final UNKNOWN_CHANNEL_TYPE:I = 0x3

.field private static final serialVersionUID:J = 0x5fac857668f7241dL


# instance fields
.field reason:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 51
    iput p2, p0, Lcom/sshtools/common/ssh/ChannelOpenException;->reason:I

    return-void
.end method


# virtual methods
.method public getReason()I
    .locals 1

    .line 55
    iget v0, p0, Lcom/sshtools/common/ssh/ChannelOpenException;->reason:I

    return v0
.end method
