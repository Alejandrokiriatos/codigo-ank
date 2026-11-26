.class public abstract Lcom/sshtools/common/net/IPUtils;
.super Ljava/lang/Object;
.source "IPUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calcBroadcastAddress([II)[I
    .locals 9

    const/4 v0, 0x4

    .line 99
    new-array v1, v0, [I

    const/16 v2, 0x20

    .line 100
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 101
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sub-int/2addr v2, p1

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 102
    invoke-static {p1}, Lcom/sshtools/common/net/IPUtils;->createMaskArray(I)[I

    move-result-object p1

    .line 104
    invoke-virtual {v2}, Ljava/lang/Integer;->doubleValue()D

    move-result-wide v3

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    .line 105
    invoke-virtual {v3}, Ljava/lang/Double;->intValue()I

    .line 106
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    div-int/lit8 v3, v3, 0x8

    .line 107
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    rem-int/lit8 v2, v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_1

    .line 109
    aget v7, p0, v4

    aput v7, v1, v4

    rsub-int/lit8 v7, v3, 0x3

    if-le v4, v7, :cond_0

    const/16 v7, 0xff

    .line 111
    aput v7, v1, v4

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 114
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Integer;->doubleValue()D

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const/4 v2, 0x3

    if-lez v3, :cond_2

    sub-int/2addr v2, v3

    .line 116
    aget p0, p0, v2

    invoke-virtual {v0}, Ljava/lang/Double;->intValue()I

    move-result p1

    add-int/2addr p0, p1

    add-int/lit8 p0, p0, -0x1

    aput p0, v1, v2

    return-object v1

    .line 118
    :cond_2
    aget p0, p1, v2

    invoke-virtual {v0}, Ljava/lang/Double;->intValue()I

    move-result p1

    add-int/2addr p0, p1

    add-int/lit8 p0, p0, -0x1

    aput p0, v1, v2

    return-object v1
.end method

.method public static calcFirstAddress([I[I)[I
    .locals 1

    .line 88
    invoke-static {p0, p1}, Lcom/sshtools/common/net/IPUtils;->calcNetworkNumber([I[I)[I

    move-result-object p0

    const/4 p1, 0x3

    .line 89
    aget v0, p0, p1

    add-int/lit8 v0, v0, 0x1

    aput v0, p0, p1

    return-object p0
.end method

.method public static calcLastAddress([II)[I
    .locals 1

    .line 51
    invoke-static {p0, p1}, Lcom/sshtools/common/net/IPUtils;->calcBroadcastAddress([II)[I

    move-result-object p0

    const/4 p1, 0x3

    .line 52
    aget v0, p0, p1

    add-int/lit8 v0, v0, -0x1

    aput v0, p0, p1

    return-object p0
.end method

.method public static calcNetworkNumber([I[I)[I
    .locals 5

    const/4 v0, 0x4

    .line 38
    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 40
    aget v3, p0, v2

    aget v4, p1, v2

    and-int/2addr v3, v4

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static createAddressString([I)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    .line 141
    aget v0, p0, v0

    const/4 v1, 0x1

    aget v1, p0, v1

    const/4 v2, 0x2

    aget v2, p0, v2

    const/4 v3, 0x3

    aget p0, p0, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static createMaskArray(I)[I
    .locals 7

    const/4 v0, 0x4

    .line 61
    new-array v1, v0, [I

    add-int/lit8 p0, p0, 0x1

    .line 62
    div-int/lit8 v2, p0, 0x8

    .line 63
    rem-int/lit8 p0, p0, 0x8

    const/4 v3, 0x2

    .line 64
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    rsub-int/lit8 p0, p0, 0x8

    .line 65
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .line 66
    invoke-virtual {v3}, Ljava/lang/Integer;->doubleValue()D

    move-result-wide v3

    invoke-virtual {p0}, Ljava/lang/Integer;->doubleValue()D

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    .line 67
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    const/16 v5, 0xff

    .line 70
    aput v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x3

    if-ge v4, v2, :cond_1

    .line 73
    invoke-virtual {p0}, Ljava/lang/Double;->intValue()I

    move-result p0

    rsub-int p0, p0, 0x100

    aput p0, v1, v4

    :goto_1
    add-int/lit8 v4, v4, 0x1

    if-ge v4, v0, :cond_1

    .line 75
    aput v3, v1, v4

    goto :goto_1

    :cond_1
    return-object v1
.end method

.method public static getByteAddress(Ljava/lang/String;)[I
    .locals 5

    .line 173
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, "."

    invoke-direct {v0, p0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x4

    .line 174
    new-array v2, v1, [I

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    .line 176
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 179
    :try_start_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v2, v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 181
    :catch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid IP address "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 177
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "IP address must consist of xxx.xxx.xxx.xxx"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return-object v2
.end method

.method public static getNumberOfHosts([II)I
    .locals 2

    const/16 p0, 0x20

    .line 128
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .line 129
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    sub-int/2addr p0, p1

    add-int/lit8 p0, p0, -0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    .line 131
    invoke-virtual {p0}, Ljava/lang/Integer;->doubleValue()D

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    .line 132
    invoke-virtual {p0}, Ljava/lang/Double;->intValue()I

    move-result p0

    add-int/lit8 p0, p0, -0x2

    return p0
.end method

.method public static nextAddress([I)[I
    .locals 5

    const/4 v0, 0x3

    .line 149
    aget v1, p0, v0

    const/4 v2, 0x1

    const/16 v3, 0xff

    if-ne v1, v3, :cond_3

    const/4 v1, 0x0

    .line 150
    aput v1, p0, v0

    const/4 v0, 0x2

    .line 151
    aget v4, p0, v0

    if-ne v4, v3, :cond_2

    .line 152
    aput v1, p0, v0

    .line 153
    aget v0, p0, v2

    if-ne v0, v3, :cond_1

    .line 154
    aput v1, p0, v2

    .line 155
    aget v0, p0, v1

    if-ne v0, v3, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    add-int/2addr v0, v2

    .line 158
    aput v0, p0, v1

    return-object p0

    :cond_1
    add-int/2addr v0, v2

    .line 160
    aput v0, p0, v2

    return-object p0

    :cond_2
    add-int/2addr v4, v2

    .line 162
    aput v4, p0, v0

    return-object p0

    :cond_3
    add-int/2addr v1, v2

    .line 164
    aput v1, p0, v0

    return-object p0
.end method
