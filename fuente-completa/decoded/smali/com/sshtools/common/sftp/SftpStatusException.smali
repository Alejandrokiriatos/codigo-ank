.class public Lcom/sshtools/common/sftp/SftpStatusException;
.super Ljava/lang/Exception;
.source "SftpStatusException.java"


# static fields
.field public static final ATTRIBUTE_BITS_NOT_AVAILABLE:I = 0x270f

.field public static final BAD_API_USAGE:I = 0x7fffffff

.field public static final INVALID_HANDLE:I = 0x64

.field public static final INVALID_RESUME_STATE:I = 0x65

.field public static final INVALID_TEXT_MODE:I = 0x66

.field public static final SSH_FX_BAD_MESSAGE:I = 0x5

.field public static final SSH_FX_BYTE_RANGE_LOCK_CONFLICT:I = 0x19

.field public static final SSH_FX_BYTE_RANGE_LOCK_REFUSED:I = 0x1a

.field public static final SSH_FX_CANNOT_DELETE:I = 0x16

.field public static final SSH_FX_CONNECTION_LOST:I = 0x7

.field public static final SSH_FX_DELETE_PENDING:I = 0x1b

.field public static final SSH_FX_DIR_NOT_EMPTY:I = 0x12

.field public static final SSH_FX_EOF:I = 0x1

.field public static final SSH_FX_FAILURE:I = 0x4

.field public static final SSH_FX_FILE_ALREADY_EXISTS:I = 0xb

.field public static final SSH_FX_FILE_CORRUPT:I = 0x1c

.field public static final SSH_FX_FILE_IS_A_DIRECTORY:I = 0x18

.field public static final SSH_FX_GROUP_INVALID:I = 0x1e

.field public static final SSH_FX_INVALID_FILENAME:I = 0x14

.field public static final SSH_FX_INVALID_HANDLE:I = 0x9

.field public static final SSH_FX_INVALID_PARAMETER:I = 0x17

.field public static final SSH_FX_LINK_LOOP:I = 0x15

.field public static final SSH_FX_LOCK_CONFLICT:I = 0x11

.field public static final SSH_FX_NOT_A_DIRECTORY:I = 0x13

.field public static final SSH_FX_NO_CONNECTION:I = 0x6

.field public static final SSH_FX_NO_MATCHING_BYTE_RANGE_LOCK:I = 0x1f

.field public static final SSH_FX_NO_MEDIA:I = 0xd

.field public static final SSH_FX_NO_SPACE_ON_FILESYSTEM:I = 0xe

.field public static final SSH_FX_NO_SUCH_FILE:I = 0x2

.field public static final SSH_FX_NO_SUCH_PATH:I = 0xa

.field public static final SSH_FX_OK:I = 0x0

.field public static final SSH_FX_OP_UNSUPPORTED:I = 0x8

.field public static final SSH_FX_OWNER_INVALID:I = 0x1d

.field public static final SSH_FX_PERMISSION_DENIED:I = 0x3

.field public static final SSH_FX_QUOTA_EXCEEDED:I = 0xf

.field public static final SSH_FX_UNKNOWN_PRINCIPAL:I = 0x10

.field public static final SSH_FX_WRITE_PROTECT:I = 0xc

.field private static final serialVersionUID:J = 0x321f4f4c403ca909L


# instance fields
.field status:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 111
    invoke-static {p1}, Lcom/sshtools/common/sftp/SftpStatusException;->getStatusText(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sshtools/common/sftp/SftpStatusException;-><init>(ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 3

    .line 106
    invoke-static {p1}, Lcom/sshtools/common/sftp/SftpStatusException;->getStatusText(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/sshtools/common/sftp/SftpStatusException;->getStatusText(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p2, ""

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 107
    iput p1, p0, Lcom/sshtools/common/sftp/SftpStatusException;->status:I

    return-void
.end method

.method public static getStatusMessage(I)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x64

    if-eq p0, v0, :cond_3

    const/16 v0, 0x65

    if-eq p0, v0, :cond_2

    const/16 v0, 0x270f

    if-eq p0, v0, :cond_1

    const v0, 0x7fffffff

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    .line 281
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SSH_FX_UNKNOWN/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 273
    :pswitch_0
    const-string p0, "SSH_FX_NO_MATCHING_BYTE_RANGE_LOCK"

    return-object p0

    .line 271
    :pswitch_1
    const-string p0, "SSH_FX_GROUP_INVALID"

    return-object p0

    .line 269
    :pswitch_2
    const-string p0, "SSH_FX_OWNER_INVALID"

    return-object p0

    .line 267
    :pswitch_3
    const-string p0, "SSH_FX_FILE_CORRUPT"

    return-object p0

    .line 265
    :pswitch_4
    const-string p0, "SSH_FX_DELETE_PENDING"

    return-object p0

    .line 263
    :pswitch_5
    const-string p0, "SSH_FX_BYTE_RANGE_LOCK_REFUSED"

    return-object p0

    .line 261
    :pswitch_6
    const-string p0, "SSH_FX_BYTE_RANGE_LOCK_CONFLICT"

    return-object p0

    .line 259
    :pswitch_7
    const-string p0, "SSH_FX_FILE_IS_A_DIRECTORY"

    return-object p0

    .line 257
    :pswitch_8
    const-string p0, "SSH_FX_INVALID_PARAMETER"

    return-object p0

    .line 255
    :pswitch_9
    const-string p0, "SSH_FX_CANNOT_DELETE"

    return-object p0

    .line 253
    :pswitch_a
    const-string p0, "SSH_FX_LINK_LOOP"

    return-object p0

    .line 251
    :pswitch_b
    const-string p0, "SSH_FX_INVALID_FILENAME"

    return-object p0

    .line 249
    :pswitch_c
    const-string p0, "SSH_FX_NOT_A_DIRECTORY"

    return-object p0

    .line 247
    :pswitch_d
    const-string p0, "SSH_FX_DIR_NOT_EMPTY"

    return-object p0

    .line 245
    :pswitch_e
    const-string p0, "SSH_FX_LOCK_CONFLICT"

    return-object p0

    .line 243
    :pswitch_f
    const-string p0, "SSH_FX_UNKNOWN_PRINCIPAL"

    return-object p0

    .line 241
    :pswitch_10
    const-string p0, "SSH_FX_QUOTA_EXCEEDED"

    return-object p0

    .line 239
    :pswitch_11
    const-string p0, "SSH_FX_NO_SPACE_ON_FILESYSTEM"

    return-object p0

    .line 237
    :pswitch_12
    const-string p0, "SSH_FX_NO_MEDIA"

    return-object p0

    .line 235
    :pswitch_13
    const-string p0, "SSH_FX_WRITE_PROTECT"

    return-object p0

    .line 233
    :pswitch_14
    const-string p0, "SSH_FX_FILE_ALREADY_EXISTS"

    return-object p0

    .line 231
    :pswitch_15
    const-string p0, "SSH_FX_NO_SUCH_PATH"

    return-object p0

    .line 226
    :pswitch_16
    const-string p0, "SSH_FX_OP_UNSUPPORTED"

    return-object p0

    .line 224
    :pswitch_17
    const-string p0, "SSH_FX_CONNECTION_LOST"

    return-object p0

    .line 222
    :pswitch_18
    const-string p0, "SSH_FX_NO_CONNECTION"

    return-object p0

    .line 220
    :pswitch_19
    const-string p0, "SSH_FX_BAD_MESSAGE"

    return-object p0

    .line 218
    :pswitch_1a
    const-string p0, "SSH_FX_FAILURE"

    return-object p0

    .line 216
    :pswitch_1b
    const-string p0, "SSH_FX_PERMISSION_DENIED"

    return-object p0

    .line 214
    :pswitch_1c
    const-string p0, "SSH_FX_NO_SUCH_FILE"

    return-object p0

    .line 212
    :pswitch_1d
    const-string p0, "SSH_FX_EOF"

    return-object p0

    .line 210
    :pswitch_1e
    const-string p0, "SSH_FX_OK"

    return-object p0

    .line 279
    :cond_0
    const-string p0, "BAD_API_USAGE"

    return-object p0

    .line 277
    :cond_1
    const-string p0, "ATTRIBUTE_BITS_NOT_AVAILABLE"

    return-object p0

    .line 275
    :cond_2
    const-string p0, "INVALID_RESUME_STATE"

    return-object p0

    .line 229
    :cond_3
    :pswitch_1f
    const-string p0, "SSH_FX_INVALID_HANDLE"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_1f
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
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

.method public static getStatusText(I)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x64

    if-eq p0, v0, :cond_3

    const/16 v0, 0x65

    if-eq p0, v0, :cond_2

    const/16 v0, 0x270f

    if-eq p0, v0, :cond_1

    const v0, 0x7fffffff

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    .line 203
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown status type "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 195
    :pswitch_0
    const-string p0, "No matching byte range lock"

    return-object p0

    .line 193
    :pswitch_1
    const-string p0, "Group invalid"

    return-object p0

    .line 191
    :pswitch_2
    const-string p0, "Owner invalid"

    return-object p0

    .line 189
    :pswitch_3
    const-string p0, "File corrupt"

    return-object p0

    .line 187
    :pswitch_4
    const-string p0, "Delete pending"

    return-object p0

    .line 185
    :pswitch_5
    const-string p0, "Byte range lock refused"

    return-object p0

    .line 183
    :pswitch_6
    const-string p0, "Byte range lock conflict"

    return-object p0

    .line 181
    :pswitch_7
    const-string p0, "File is a directory"

    return-object p0

    .line 179
    :pswitch_8
    const-string p0, "Invalid parameter"

    return-object p0

    .line 177
    :pswitch_9
    const-string p0, "Cannot delete"

    return-object p0

    .line 175
    :pswitch_a
    const-string p0, "Link loop"

    return-object p0

    .line 173
    :pswitch_b
    const-string p0, "Invalid filename"

    return-object p0

    .line 171
    :pswitch_c
    const-string p0, "Not a directory"

    return-object p0

    .line 169
    :pswitch_d
    const-string p0, "Dir not empty"

    return-object p0

    .line 167
    :pswitch_e
    const-string p0, "Lock conflict"

    return-object p0

    .line 165
    :pswitch_f
    const-string p0, "Unknown principal"

    return-object p0

    .line 163
    :pswitch_10
    const-string p0, "Quota exceeded"

    return-object p0

    .line 161
    :pswitch_11
    const-string p0, "No space on filesystem"

    return-object p0

    .line 159
    :pswitch_12
    const-string p0, "No media at location"

    return-object p0

    .line 157
    :pswitch_13
    const-string p0, "Write protect error"

    return-object p0

    .line 155
    :pswitch_14
    const-string p0, "File already exists"

    return-object p0

    .line 153
    :pswitch_15
    const-string p0, "No such path"

    return-object p0

    .line 148
    :pswitch_16
    const-string p0, "The operation is unsupported"

    return-object p0

    .line 146
    :pswitch_17
    const-string p0, "Connection lost"

    return-object p0

    .line 144
    :pswitch_18
    const-string p0, "No connection available"

    return-object p0

    .line 142
    :pswitch_19
    const-string p0, "Server responded to a bad message"

    return-object p0

    .line 140
    :pswitch_1a
    const-string p0, "Server responded with an unknown failure"

    return-object p0

    .line 138
    :pswitch_1b
    const-string p0, "Permission denied"

    return-object p0

    .line 136
    :pswitch_1c
    const-string p0, "No such file"

    return-object p0

    .line 134
    :pswitch_1d
    const-string p0, "EOF"

    return-object p0

    .line 132
    :pswitch_1e
    const-string p0, "OK"

    return-object p0

    .line 201
    :cond_0
    const-string p0, "Bad API usage"

    return-object p0

    .line 199
    :cond_1
    const-string p0, "Attribute bits field is not available. Did you check hasAttributeBits()?"

    return-object p0

    .line 197
    :cond_2
    const-string p0, "Invalid resume state"

    return-object p0

    .line 151
    :cond_3
    :pswitch_1f
    const-string p0, "Invalid file handle"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_1f
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
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
.method public getStatus()I
    .locals 1

    .line 120
    iget v0, p0, Lcom/sshtools/common/sftp/SftpStatusException;->status:I

    return v0
.end method
