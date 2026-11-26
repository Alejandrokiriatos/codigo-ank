.class public Lcom/sshtools/common/ssh/SshException;
.super Ljava/lang/Exception;
.source "SshException.java"


# static fields
.field public static final AGENT_ERROR:I = 0xd

.field public static final BAD_API_USAGE:I = 0x4

.field public static final CANCELLED_CONNECTION:I = 0x8

.field public static final CHANNEL_FAILURE:I = 0x6

.field public static final CONNECTION_CLOSED:I = 0xc

.field public static final CONNECT_FAILED:I = 0xa

.field public static final FORWARDING_ERROR:I = 0xe

.field public static final HOST_KEY_ERROR:I = 0xf000

.field public static final INTERNAL_ERROR:I = 0x5

.field public static final JCE_ERROR:I = 0x10

.field public static final KEY_EXCHANGE_FAILED:I = 0x9

.field public static final LICENSE_ERROR:I = 0xb

.field public static final MESSAGE_TIMEOUT:I = 0x15

.field public static final POSSIBLE_CORRUPT_FILE:I = 0x11

.field public static final PROMPT_TIMEOUT:I = 0x14

.field public static final PROTOCOL_VIOLATION:I = 0x3

.field public static final PSEUDO_TTY_ERROR:I = 0xf

.field public static final REMOTE_HOST_DISCONNECTED:I = 0x2

.field public static final SCP_TRANSFER_CANCELLED:I = 0x12

.field public static final SESSION_STREAM_ERROR:I = 0xf

.field public static final SHELL_ERROR:I = 0xf

.field public static final SOCKET_TIMEOUT:I = 0x13

.field public static final UNEXPECTED_TERMINATION:I = 0x1

.field public static final UNSUPPORTED_ALGORITHM:I = 0x7

.field public static final UNSUPPORTED_OPERATION:I = 0xe007

.field private static final serialVersionUID:J = 0x7d029b7bc56b1093L


# instance fields
.field cause:Ljava/lang/Throwable;

.field reason:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 206
    invoke-direct {p0, p2, p1, v0}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x0

    .line 216
    invoke-direct {p0, v0, p1, p2}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 196
    invoke-direct {p0, p1, p2, v0}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/Throwable;)V
    .locals 0

    if-nez p1, :cond_1

    if-nez p3, :cond_0

    .line 252
    const-string p1, "Unknown cause"

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    .line 253
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    .line 252
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 255
    iput-object p3, p0, Lcom/sshtools/common/ssh/SshException;->cause:Ljava/lang/Throwable;

    .line 256
    iput p2, p0, Lcom/sshtools/common/ssh/SshException;->reason:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x5

    .line 231
    invoke-direct {p0, p1, v0, p2}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1

    .line 241
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;I)V
    .locals 1

    const/4 v0, 0x0

    .line 220
    invoke-direct {p0, v0, p2, p1}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1

    .line 275
    iget-object v0, p0, Lcom/sshtools/common/ssh/SshException;->cause:Ljava/lang/Throwable;

    return-object v0
.end method

.method public getReason()I
    .locals 1

    .line 265
    iget v0, p0, Lcom/sshtools/common/ssh/SshException;->reason:I

    return v0
.end method
