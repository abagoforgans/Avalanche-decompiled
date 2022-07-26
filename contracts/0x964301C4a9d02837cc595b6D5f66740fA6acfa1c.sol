contract main {




// =====================  Runtime code  =====================


#
#  - send(address arg1, uint256 arg2, uint32 arg3, bytes32 arg4, bool arg5)
#
const sub_97f641ab(?) = 6 * 10^16

const PRE_FILL_FEE_NUMERATOR = 9995

const PRE_FILL_FEE_DENOMINATOR = 10000

const VERSION = 0


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
address owner;
address xAppConnectionManagerAddress;
mapping of uint256 remotes;
address tokenRegistryAddress;
mapping of address liquidityProvider;

function xAppConnectionManager() {
    return xAppConnectionManagerAddress
}

function liquidityProvider(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return liquidityProvider[arg1]
}

function remotes(uint32 arg1) {
    require calldata.size - 4 >= 32
    return remotes[arg1]
}

function owner() {
    return owner
}

function tokenRegistry() {
    return tokenRegistryAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function enrollRemoteRouter(uint32 arg1, bytes32 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    remotes[arg1 << 224] = arg2
}

function setXAppConnectionManager(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    xAppConnectionManagerAddress = arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function enrollCustom(uint32 arg1, bytes32 arg2, address arg3) {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg3)
    call arg3.0x40c10f19 with:
         gas gas_remaining wei
        args this.address, 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(arg3)
    call arg3.burn(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args this.address, 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(tokenRegistryAddress)
    call tokenRegistryAddress.0x28b1aea0 with:
         gas gas_remaining wei
        args arg1 << 224, arg2, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function migrate(address arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(tokenRegistryAddress)
    staticcall tokenRegistryAddress.0xe71e251 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 == ext_call.return_data[12 len 20]:
        revert with 0, '!different'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.burn(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x40c10f19 with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function initialize(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    if uint8(stor0.field_8):
        tokenRegistryAddress = arg1
        xAppConnectionManagerAddress = arg2
        owner = msg.sender
        emit OwnershipTransferred(0, msg.sender);
    else:
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            46,
                            0x78496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                            mem[210 len 18]
        if uint8(stor0.field_8):
            tokenRegistryAddress = arg1
            xAppConnectionManagerAddress = arg2
            owner = msg.sender
            emit OwnershipTransferred(0, msg.sender);
        else:
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            tokenRegistryAddress = arg1
            if ext_code.size(this.address):
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                46,
                                0x78496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                mem[210 len 18]
            if uint8(stor0.field_8):
                xAppConnectionManagerAddress = arg2
                owner = msg.sender
                emit OwnershipTransferred(0, msg.sender);
            else:
                uint8(stor0.field_0) = 1
                uint8(stor0.field_8) = 1
                Mask(248, 0, stor0.field_8) = 0
                xAppConnectionManagerAddress = arg2
                if ext_code.size(this.address):
                    if uint8(stor0.field_0):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    46,
                                    0x78496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                    mem[210 len 18]
                if uint8(stor0.field_8):
                    owner = msg.sender
                    emit OwnershipTransferred(0, msg.sender);
                else:
                    uint8(stor0.field_0) = 1
                    uint8(stor0.field_8) = 1
                    Mask(248, 0, stor0.field_8) = 0
                    if ext_code.size(this.address):
                        if uint8(stor0.field_0):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        46,
                                        0x78496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                        mem[210 len 18]
                    if uint8(stor0.field_8):
                        owner = msg.sender
                        emit OwnershipTransferred(0, msg.sender);
                    else:
                        uint8(stor0.field_0) = 1
                        uint8(stor0.field_8) = 1
                        Mask(248, 0, stor0.field_8) = 0
                        uint8(stor0.field_8) = 0
                        if ext_code.size(this.address):
                            if uint8(stor0.field_0):
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            46,
                                            0x78496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                            mem[210 len 18]
                        if uint8(stor0.field_8):
                            owner = msg.sender
                            emit OwnershipTransferred(0, msg.sender);
                        else:
                            uint8(stor0.field_0) = 1
                            uint8(stor0.field_8) = 1
                            Mask(248, 0, stor0.field_8) = 0
                            owner = msg.sender
                            emit OwnershipTransferred(0, msg.sender);
                            uint8(stor0.field_8) = 0
                            uint8(stor0.field_8) = 0
                            uint8(stor0.field_8) = 0
                            uint8(stor0.field_8) = 0
}

function handle(uint32 arg1, uint32 arg2, bytes32 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    require ext_code.size(xAppConnectionManagerAddress)
    staticcall xAppConnectionManagerAddress.0x5190bc53 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, '!replica'
    if remotes[arg1 << 224] != arg3:
        revert with 0, '!remote router'
    if arg4.length < 0:
        revert with 0, 'Overflow during addition.'
    if arg4.length > ceil32(arg4.length):
        revert with 0, 'Validity assertion failed'
    if not arg4.length + 128:
        revert with 0, 'Validity assertion failed'
    if Mask(96, 0, arg4.length) != 133:
        revert with 0, 'Validity assertion failed'
    if not !(ceil32(arg4.length) + 128 < Mask(96, 0, (128 or Mask(16, 96, arg4.length) >> 96 or 0) + Mask(96, 0, arg4.length))):
        revert with 0, 'Validity assertion failed'
    idx = 31
    s = 0
    while uint8(idx) > 15:
        if 16 == uint8(idx):
            idx = idx - 1
            s = s or 12336
            continue 
        idx = idx - 1
        s = s << 16 or 808452096
        continue 
    idx = 15
    s = 0
    while uint8(idx) < 255:
        if 0 == uint8(idx):
            idx = idx - 1
            s = s or 12336
            continue 
        idx = idx - 1
        s = s << 16 or 808452096
        continue 
    idx = 31
    s = 0
    while uint8(idx) > 15:
        if uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) / 16 or 240 == 240:
            if uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240 == 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 12336
                    continue 
                idx = idx - 1
                s = s << 16 or 808452096
                continue 
            if 241 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 12337
                    continue 
                idx = idx - 1
                s = s << 16 or 808517632
                continue 
            if 242 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 12338
                    continue 
                idx = idx - 1
                s = s << 16 or 808583168
                continue 
            if 243 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 12339
                    continue 
                idx = idx - 1
                s = s << 16 or 808648704
                continue 
            if 244 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 12340
                    continue 
                idx = idx - 1
                s = s << 16 or 808714240
                continue 
            if 245 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 12341
                    continue 
                idx = idx - 1
                s = s << 16 or 808779776
                continue 
            if 246 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 12342
                    continue 
                idx = idx - 1
                s = s << 16 or 808845312
                continue 
            if 247 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 12343
                    continue 
                idx = idx - 1
                s = s << 16 or 808910848
                continue 
            if 248 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 12344
                    continue 
                idx = idx - 1
                s = s << 16 or 808976384
                continue 
            if 249 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 12345
                    continue 
                idx = idx - 1
                s = s << 16 or 809041920
                continue 
            if 250 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 12385
                    continue 
                idx = idx - 1
                s = s << 16 or 811663360
                continue 
            if 251 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 12386
                    continue 
                idx = idx - 1
                s = s << 16 or 811728896
                continue 
            if 252 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 12387
                    continue 
                idx = idx - 1
                s = s << 16 or 811794432
                continue 
            if 253 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 12388
                    continue 
                idx = idx - 1
                s = s << 16 or 811859968
                continue 
            if 254 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 12389
                    continue 
                idx = idx - 1
                s = s << 16 or 811925504
                continue 
            if uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240 != 255:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 12288
                    continue 
                idx = idx - 1
                s = s << 16 or 805306368
                continue 
            if 16 == uint8(idx):
                idx = idx - 1
                s = s or 12390
                continue 
            idx = idx - 1
            s = s << 16 or 811991040
            continue 
        if 241 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) / 16 or 240:
            if uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240 == 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 12592
                    continue 
                idx = idx - 1
                s = s << 16 or 825229312
                continue 
            if 241 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 12593
                    continue 
                idx = idx - 1
                s = s << 16 or 825294848
                continue 
            if 242 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 12594
                    continue 
                idx = idx - 1
                s = s << 16 or 825360384
                continue 
            if 243 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 12595
                    continue 
                idx = idx - 1
                s = s << 16 or 825425920
                continue 
            if 244 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 12596
                    continue 
                idx = idx - 1
                s = s << 16 or 825491456
                continue 
            if 245 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 12597
                    continue 
                idx = idx - 1
                s = s << 16 or 825556992
                continue 
            if 246 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 12598
                    continue 
                idx = idx - 1
                s = s << 16 or 825622528
                continue 
            if 247 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 12599
                    continue 
                idx = idx - 1
                s = s << 16 or 825688064
                continue 
            if 248 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 12600
                    continue 
                idx = idx - 1
                s = s << 16 or 229376 * 3600
                continue 
            if 249 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 12601
                    continue 
                idx = idx - 1
                s = s << 16 or 825819136
                continue 
            if 250 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 12641
                    continue 
                idx = idx - 1
                s = s << 16 or 828440576
                continue 
            if 251 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 12642
                    continue 
                idx = idx - 1
                s = s << 16 or 828506112
                continue 
            if 252 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 12643
                    continue 
                idx = idx - 1
                s = s << 16 or 828571648
                continue 
            if 253 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 12644
                    continue 
                idx = idx - 1
                s = s << 16 or 828637184
                continue 
            if 254 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 12645
                    continue 
                idx = idx - 1
                s = s << 16 or 828702720
                continue 
            if uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240 != 255:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 12544
                    continue 
                idx = idx - 1
                s = s << 16 or 822083584
                continue 
            if 16 == uint8(idx):
                idx = idx - 1
                s = s or 12646
                continue 
            idx = idx - 1
            s = s << 16 or 828768256
            continue 
        if 242 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) / 16 or 240:
            if uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240 == 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 12848
                    continue 
                idx = idx - 1
                s = s << 16 or 842006528
                continue 
            if 241 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 12849
                    continue 
                idx = idx - 1
                s = s << 16 or 842072064
                continue 
            if 242 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 12850
                    continue 
                idx = idx - 1
                s = s << 16 or 842137600
                continue 
            if 243 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 12851
                    continue 
                idx = idx - 1
                s = s << 16 or 842203136
                continue 
            if 244 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 12852
                    continue 
                idx = idx - 1
                s = s << 16 or 842268672
                continue 
            if 245 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 12853
                    continue 
                idx = idx - 1
                s = s << 16 or 842334208
                continue 
            if 246 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 12854
                    continue 
                idx = idx - 1
                s = s << 16 or 842399744
                continue 
            if 247 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 12855
                    continue 
                idx = idx - 1
                s = s << 16 or 842465280
                continue 
            if 248 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 12856
                    continue 
                idx = idx - 1
                s = s << 16 or 842530816
                continue 
            if 249 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 12857
                    continue 
                idx = idx - 1
                s = s << 16 or 842596352
                continue 
            if 250 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 12897
                    continue 
                idx = idx - 1
                s = s << 16 or 845217792
                continue 
            if 251 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 12898
                    continue 
                idx = idx - 1
                s = s << 16 or 845283328
                continue 
            if 252 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 12899
                    continue 
                idx = idx - 1
                s = s << 16 or 845348864
                continue 
            if 253 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 12900
                    continue 
                idx = idx - 1
                s = s << 16 or 845414400
                continue 
            if 254 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 12901
                    continue 
                idx = idx - 1
                s = s << 16 or 845479936
                continue 
            if uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240 != 255:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 12800
                    continue 
                idx = idx - 1
                s = s << 16 or 838860800
                continue 
            if 16 == uint8(idx):
                idx = idx - 1
                s = s or 12902
                continue 
            idx = idx - 1
            s = s << 16 or 845545472
            continue 
        if 243 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) / 16 or 240:
            if uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240 == 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 13104
                    continue 
                idx = idx - 1
                s = s << 16 or 858783744
                continue 
            if 241 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 13105
                    continue 
                idx = idx - 1
                s = s << 16 or 858849280
                continue 
            if 242 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 13106
                    continue 
                idx = idx - 1
                s = s << 16 or 858914816
                continue 
            if 243 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 13107
                    continue 
                idx = idx - 1
                s = s << 16 or 858980352
                continue 
            if 244 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 13108
                    continue 
                idx = idx - 1
                s = s << 16 or 859045888
                continue 
            if 245 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 13109
                    continue 
                idx = idx - 1
                s = s << 16 or 859111424
                continue 
            if 246 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 13110
                    continue 
                idx = idx - 1
                s = s << 16 or 859176960
                continue 
            if 247 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 13111
                    continue 
                idx = idx - 1
                s = s << 16 or 859242496
                continue 
            if 248 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 13112
                    continue 
                idx = idx - 1
                s = s << 16 or 859308032
                continue 
            if 249 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 13113
                    continue 
                idx = idx - 1
                s = s << 16 or 859373568
                continue 
            if 250 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 13153
                    continue 
                idx = idx - 1
                s = s << 16 or 861995008
                continue 
            if 251 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 13154
                    continue 
                idx = idx - 1
                s = s << 16 or 862060544
                continue 
            if 252 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 13155
                    continue 
                idx = idx - 1
                s = s << 16 or 862126080
                continue 
            if 253 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 13156
                    continue 
                idx = idx - 1
                s = s << 16 or 862191616
                continue 
            if 254 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 13157
                    continue 
                idx = idx - 1
                s = s << 16 or 862257152
                continue 
            if uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240 != 255:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 13056
                    continue 
                idx = idx - 1
                s = s << 16 or 855638016
                continue 
            if 16 == uint8(idx):
                idx = idx - 1
                s = s or 13158
                continue 
            idx = idx - 1
            s = s << 16 or 862322688
            continue 
        if 244 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) / 16 or 240:
            if uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240 == 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 13360
                    continue 
                idx = idx - 1
                s = s << 16 or 875560960
                continue 
            if 241 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 13361
                    continue 
                idx = idx - 1
                s = s << 16 or 875626496
                continue 
            if 242 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 13362
                    continue 
                idx = idx - 1
                s = s << 16 or 875692032
                continue 
            if 243 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 13363
                    continue 
                idx = idx - 1
                s = s << 16 or 875757568
                continue 
            if 244 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 13364
                    continue 
                idx = idx - 1
                s = s << 16 or 875823104
                continue 
            if 245 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 13365
                    continue 
                idx = idx - 1
                s = s << 16 or 875888640
                continue 
            if 246 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 13366
                    continue 
                idx = idx - 1
                s = s << 16 or 875954176
                continue 
            if 247 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 13367
                    continue 
                idx = idx - 1
                s = s << 16 or 876019712
                continue 
            if 248 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 13368
                    continue 
                idx = idx - 1
                s = s << 16 or 876085248
                continue 
            if 249 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 13369
                    continue 
                idx = idx - 1
                s = s << 16 or 876150784
                continue 
            if 250 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 13409
                    continue 
                idx = idx - 1
                s = s << 16 or 878772224
                continue 
            if 251 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 13410
                    continue 
                idx = idx - 1
                s = s << 16 or 878837760
                continue 
            if 252 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 13411
                    continue 
                idx = idx - 1
                s = s << 16 or 878903296
                continue 
            if 253 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 13412
                    continue 
                idx = idx - 1
                s = s << 16 or 878968832
                continue 
            if 254 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 13413
                    continue 
                idx = idx - 1
                s = s << 16 or 879034368
                continue 
            if uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240 != 255:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 13312
                    continue 
                idx = idx - 1
                s = s << 16 or 872415232
                continue 
            if 16 == uint8(idx):
                idx = idx - 1
                s = s or 13414
                continue 
            idx = idx - 1
            s = s << 16 or 879099904
            continue 
        if 245 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) / 16 or 240:
            if uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240 == 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 13616
                    continue 
                idx = idx - 1
                s = s << 16 or 892338176
                continue 
            if 241 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 13617
                    continue 
                idx = idx - 1
                s = s << 16 or 892403712
                continue 
            if 242 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 13618
                    continue 
                idx = idx - 1
                s = s << 16 or 892469248
                continue 
            if 243 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 13619
                    continue 
                idx = idx - 1
                s = s << 16 or 892534784
                continue 
            if 244 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 13620
                    continue 
                idx = idx - 1
                s = s << 16 or 892600320
                continue 
            if 245 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 13621
                    continue 
                idx = idx - 1
                s = s << 16 or 892665856
                continue 
            if 246 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 13622
                    continue 
                idx = idx - 1
                s = s << 16 or 892731392
                continue 
            if 247 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 13623
                    continue 
                idx = idx - 1
                s = s << 16 or 892796928
                continue 
            if 248 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 13624
                    continue 
                idx = idx - 1
                s = s << 16 or 892862464
                continue 
            if 249 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 13625
                    continue 
                idx = idx - 1
                s = s << 16 or 892928000
                continue 
            if 250 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 13665
                    continue 
                idx = idx - 1
                s = s << 16 or 895549440
                continue 
            if 251 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 13666
                    continue 
                idx = idx - 1
                s = s << 16 or 895614976
                continue 
            if 252 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 13667
                    continue 
                idx = idx - 1
                s = s << 16 or 895680512
                continue 
            if 253 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 13668
                    continue 
                idx = idx - 1
                s = s << 16 or 895746048
                continue 
            if 254 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 13669
                    continue 
                idx = idx - 1
                s = s << 16 or 895811584
                continue 
            if uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240 != 255:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 13568
                    continue 
                idx = idx - 1
                s = s << 16 or 889192448
                continue 
            if 16 == uint8(idx):
                idx = idx - 1
                s = s or 13670
                continue 
            idx = idx - 1
            s = s << 16 or 895877120
            continue 
        if 246 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) / 16 or 240:
            if uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240 == 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 13872
                    continue 
                idx = idx - 1
                s = s << 16 or 909115392
                continue 
            if 241 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 13873
                    continue 
                idx = idx - 1
                s = s << 16 or 909180928
                continue 
            if 242 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 13874
                    continue 
                idx = idx - 1
                s = s << 16 or 909246464
                continue 
            if 243 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 13875
                    continue 
                idx = idx - 1
                s = s << 16 or 909312000
                continue 
            if 244 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 13876
                    continue 
                idx = idx - 1
                s = s << 16 or 909377536
                continue 
            if 245 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 13877
                    continue 
                idx = idx - 1
                s = s << 16 or 909443072
                continue 
            if 246 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 13878
                    continue 
                idx = idx - 1
                s = s << 16 or 909508608
                continue 
            if 247 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 13879
                    continue 
                idx = idx - 1
                s = s << 16 or 909574144
                continue 
            if 248 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 13880
                    continue 
                idx = idx - 1
                s = s << 16 or 909639680
                continue 
            if 249 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 13881
                    continue 
                idx = idx - 1
                s = s << 16 or 909705216
                continue 
            if 250 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 13921
                    continue 
                idx = idx - 1
                s = s << 16 or 912326656
                continue 
            if 251 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 13922
                    continue 
                idx = idx - 1
                s = s << 16 or 912392192
                continue 
            if 252 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 13923
                    continue 
                idx = idx - 1
                s = s << 16 or 912457728
                continue 
            if 253 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 13924
                    continue 
                idx = idx - 1
                s = s << 16 or 912523264
                continue 
            if 254 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 13925
                    continue 
                idx = idx - 1
                s = s << 16 or 912588800
                continue 
            if uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240 != 255:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 13824
                    continue 
                idx = idx - 1
                s = s << 16 or 905969664
                continue 
            if 16 == uint8(idx):
                idx = idx - 1
                s = s or 13926
                continue 
            idx = idx - 1
            s = s << 16 or 912654336
            continue 
        if 247 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) / 16 or 240:
            if uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240 == 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 14128
                    continue 
                idx = idx - 1
                s = s << 16 or 925892608
                continue 
            if 241 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 14129
                    continue 
                idx = idx - 1
                s = s << 16 or 925958144
                continue 
            if 242 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 14130
                    continue 
                idx = idx - 1
                s = s << 16 or 926023680
                continue 
            if 243 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 14131
                    continue 
                idx = idx - 1
                s = s << 16 or 926089216
                continue 
            if 244 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 14132
                    continue 
                idx = idx - 1
                s = s << 16 or 926154752
                continue 
            if 245 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 14133
                    continue 
                idx = idx - 1
                s = s << 16 or 926220288
                continue 
            if 246 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 14134
                    continue 
                idx = idx - 1
                s = s << 16 or 926285824
                continue 
            if 247 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 14135
                    continue 
                idx = idx - 1
                s = s << 16 or 926351360
                continue 
            if 248 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 14136
                    continue 
                idx = idx - 1
                s = s << 16 or 926416896
                continue 
            if 249 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 14137
                    continue 
                idx = idx - 1
                s = s << 16 or 926482432
                continue 
            if 250 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 14177
                    continue 
                idx = idx - 1
                s = s << 16 or 929103872
                continue 
            if 251 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 14178
                    continue 
                idx = idx - 1
                s = s << 16 or 929169408
                continue 
            if 252 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 14179
                    continue 
                idx = idx - 1
                s = s << 16 or 929234944
                continue 
            if 253 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 14180
                    continue 
                idx = idx - 1
                s = s << 16 or 929300480
                continue 
            if 254 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 14181
                    continue 
                idx = idx - 1
                s = s << 16 or 929366016
                continue 
            if uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240 != 255:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 14080
                    continue 
                idx = idx - 1
                s = s << 16 or 922746880
                continue 
            if 16 == uint8(idx):
                idx = idx - 1
                s = s or 14182
                continue 
            idx = idx - 1
            s = s << 16 or 929431552
            continue 
        if 248 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) / 16 or 240:
            if uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240 == 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 14384
                    continue 
                idx = idx - 1
                s = s << 16 or 942669824
                continue 
            if 241 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 14385
                    continue 
                idx = idx - 1
                s = s << 16 or 942735360
                continue 
            if 242 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 14386
                    continue 
                idx = idx - 1
                s = s << 16 or 942800896
                continue 
            if 243 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 14387
                    continue 
                idx = idx - 1
                s = s << 16 or 942866432
                continue 
            if 244 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 14388
                    continue 
                idx = idx - 1
                s = s << 16 or 942931968
                continue 
            if 245 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 14389
                    continue 
                idx = idx - 1
                s = s << 16 or 942997504
                continue 
            if 246 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 14390
                    continue 
                idx = idx - 1
                s = s << 16 or 943063040
                continue 
            if 247 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 14391
                    continue 
                idx = idx - 1
                s = s << 16 or 943128576
                continue 
            if 248 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 14392
                    continue 
                idx = idx - 1
                s = s << 16 or 943194112
                continue 
            if 249 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 14393
                    continue 
                idx = idx - 1
                s = s << 16 or 943259648
                continue 
            if 250 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 14433
                    continue 
                idx = idx - 1
                s = s << 16 or 945881088
                continue 
            if 251 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 14434
                    continue 
                idx = idx - 1
                s = s << 16 or 945946624
                continue 
            if 252 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 14435
                    continue 
                idx = idx - 1
                s = s << 16 or 946012160
                continue 
            if 253 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 14436
                    continue 
                idx = idx - 1
                s = s << 16 or 946077696
                continue 
            if 254 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 14437
                    continue 
                idx = idx - 1
                s = s << 16 or 946143232
                continue 
            if uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240 != 255:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 14336
                    continue 
                idx = idx - 1
                s = s << 16 or 939524096
                continue 
            if 16 == uint8(idx):
                idx = idx - 1
                s = s or 14438
                continue 
            idx = idx - 1
            s = s << 16 or 946208768
            continue 
        if 249 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) / 16 or 240:
            if uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240 == 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 14640
                    continue 
                idx = idx - 1
                s = s << 16 or 959447040
                continue 
            if 241 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 14641
                    continue 
                idx = idx - 1
                s = s << 16 or 959512576
                continue 
            if 242 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 14642
                    continue 
                idx = idx - 1
                s = s << 16 or 959578112
                continue 
            if 243 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 14643
                    continue 
                idx = idx - 1
                s = s << 16 or 959643648
                continue 
            if 244 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 14644
                    continue 
                idx = idx - 1
                s = s << 16 or 959709184
                continue 
            if 245 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 14645
                    continue 
                idx = idx - 1
                s = s << 16 or 959774720
                continue 
            if 246 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 14646
                    continue 
                idx = idx - 1
                s = s << 16 or 959840256
                continue 
            if 247 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 14647
                    continue 
                idx = idx - 1
                s = s << 16 or 959905792
                continue 
            if 248 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 14648
                    continue 
                idx = idx - 1
                s = s << 16 or 959971328
                continue 
            if 249 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 14649
                    continue 
                idx = idx - 1
                s = s << 16 or 960036864
                continue 
            if 250 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 14689
                    continue 
                idx = idx - 1
                s = s << 16 or 962658304
                continue 
            if 251 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 14690
                    continue 
                idx = idx - 1
                s = s << 16 or 962723840
                continue 
            if 252 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 14691
                    continue 
                idx = idx - 1
                s = s << 16 or 962789376
                continue 
            if 253 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 14692
                    continue 
                idx = idx - 1
                s = s << 16 or 962854912
                continue 
            if 254 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 14693
                    continue 
                idx = idx - 1
                s = s << 16 or 962920448
                continue 
            if uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240 != 255:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 14592
                    continue 
                idx = idx - 1
                s = s << 16 or 956301312
                continue 
            if 16 == uint8(idx):
                idx = idx - 1
                s = s or 14694
                continue 
            idx = idx - 1
            s = s << 16 or 962985984
            continue 
        if 250 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) / 16 or 240:
            if uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240 == 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 24880
                    continue 
                idx = idx - 1
                s = s << 16 or 1630535680
                continue 
            if 241 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 24881
                    continue 
                idx = idx - 1
                s = s << 16 or 1630601216
                continue 
            if 242 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 24882
                    continue 
                idx = idx - 1
                s = s << 16 or 1630666752
                continue 
            if 243 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 24883
                    continue 
                idx = idx - 1
                s = s << 16 or 1630732288
                continue 
            if 244 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 24884
                    continue 
                idx = idx - 1
                s = s << 16 or 1630797824
                continue 
            if 245 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 24885
                    continue 
                idx = idx - 1
                s = s << 16 or 1630863360
                continue 
            if 246 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 24886
                    continue 
                idx = idx - 1
                s = s << 16 or 1630928896
                continue 
            if 247 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 24887
                    continue 
                idx = idx - 1
                s = s << 16 or 1630994432
                continue 
            if 248 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 24888
                    continue 
                idx = idx - 1
                s = s << 16 or 1631059968
                continue 
            if 249 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 24889
                    continue 
                idx = idx - 1
                s = s << 16 or 1631125504
                continue 
            if 250 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 24929
                    continue 
                idx = idx - 1
                s = s << 16 or 1633746944
                continue 
            if 251 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 24930
                    continue 
                idx = idx - 1
                s = s << 16 or 1633812480
                continue 
            if 252 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 24931
                    continue 
                idx = idx - 1
                s = s << 16 or 1633878016
                continue 
            if 253 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 24932
                    continue 
                idx = idx - 1
                s = s << 16 or 1633943552
                continue 
            if 254 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 24933
                    continue 
                idx = idx - 1
                s = s << 16 or 1634009088
                continue 
            if uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240 != 255:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 24832
                    continue 
                idx = idx - 1
                s = s << 16 or 1627389952
                continue 
            if 16 == uint8(idx):
                idx = idx - 1
                s = s or 24934
                continue 
            idx = idx - 1
            s = s << 16 or 1634074624
            continue 
        if 251 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) / 16 or 240:
            if uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240 == 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 25136
                    continue 
                idx = idx - 1
                s = s << 16 or 1647312896
                continue 
            if 241 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 25137
                    continue 
                idx = idx - 1
                s = s << 16 or 1647378432
                continue 
            if 242 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 25138
                    continue 
                idx = idx - 1
                s = s << 16 or 1647443968
                continue 
            if 243 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 25139
                    continue 
                idx = idx - 1
                s = s << 16 or 1647509504
                continue 
            if 244 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 25140
                    continue 
                idx = idx - 1
                s = s << 16 or 1647575040
                continue 
            if 245 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 25141
                    continue 
                idx = idx - 1
                s = s << 16 or 1647640576
                continue 
            if 246 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 25142
                    continue 
                idx = idx - 1
                s = s << 16 or 1647706112
                continue 
            if 247 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 25143
                    continue 
                idx = idx - 1
                s = s << 16 or 1647771648
                continue 
            if 248 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 25144
                    continue 
                idx = idx - 1
                s = s << 16 or 1647837184
                continue 
            if 249 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 25145
                    continue 
                idx = idx - 1
                s = s << 16 or 1647902720
                continue 
            if 250 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 25185
                    continue 
                idx = idx - 1
                s = s << 16 or 1650524160
                continue 
            if 251 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 25186
                    continue 
                idx = idx - 1
                s = s << 16 or 1650589696
                continue 
            if 252 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 25187
                    continue 
                idx = idx - 1
                s = s << 16 or 1650655232
                continue 
            if 253 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 25188
                    continue 
                idx = idx - 1
                s = s << 16 or 1650720768
                continue 
            if 254 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 25189
                    continue 
                idx = idx - 1
                s = s << 16 or 1650786304
                continue 
            if uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240 != 255:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 25088
                    continue 
                idx = idx - 1
                s = s << 16 or 1644167168
                continue 
            if 16 == uint8(idx):
                idx = idx - 1
                s = s or 25190
                continue 
            idx = idx - 1
            s = s << 16 or 1650851840
            continue 
        if 252 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) / 16 or 240:
            if uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240 == 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 25392
                    continue 
                idx = idx - 1
                s = s << 16 or 1664090112
                continue 
            if 241 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 25393
                    continue 
                idx = idx - 1
                s = s << 16 or 1664155648
                continue 
            if 242 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 25394
                    continue 
                idx = idx - 1
                s = s << 16 or 1664221184
                continue 
            if 243 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 25395
                    continue 
                idx = idx - 1
                s = s << 16 or 1664286720
                continue 
            if 244 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 25396
                    continue 
                idx = idx - 1
                s = s << 16 or 1664352256
                continue 
            if 245 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 25397
                    continue 
                idx = idx - 1
                s = s << 16 or 1664417792
                continue 
            if 246 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 25398
                    continue 
                idx = idx - 1
                s = s << 16 or 1664483328
                continue 
            if 247 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 25399
                    continue 
                idx = idx - 1
                s = s << 16 or 1664548864
                continue 
            if 248 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 25400
                    continue 
                idx = idx - 1
                s = s << 16 or 1664614400
                continue 
            if 249 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 25401
                    continue 
                idx = idx - 1
                s = s << 16 or 1664679936
                continue 
            if 250 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 25441
                    continue 
                idx = idx - 1
                s = s << 16 or 1667301376
                continue 
            if 251 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 25442
                    continue 
                idx = idx - 1
                s = s << 16 or 1667366912
                continue 
            if 252 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 25443
                    continue 
                idx = idx - 1
                s = s << 16 or 1667432448
                continue 
            if 253 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 25444
                    continue 
                idx = idx - 1
                s = s << 16 or 1667497984
                continue 
            if 254 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 25445
                    continue 
                idx = idx - 1
                s = s << 16 or 1667563520
                continue 
            if uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240 != 255:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 25344
                    continue 
                idx = idx - 1
                s = s << 16 or 1660944384
                continue 
            if 16 == uint8(idx):
                idx = idx - 1
                s = s or 25446
                continue 
            idx = idx - 1
            s = s << 16 or 1667629056
            continue 
        if 253 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) / 16 or 240:
            if uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240 == 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 25648
                    continue 
                idx = idx - 1
                s = s << 16 or 1680867328
                continue 
            if 241 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 25649
                    continue 
                idx = idx - 1
                s = s << 16 or 1680932864
                continue 
            if 242 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 25650
                    continue 
                idx = idx - 1
                s = s << 16 or 466944 * 24 * 3600
                continue 
            if 243 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 25651
                    continue 
                idx = idx - 1
                s = s << 16 or 1681063936
                continue 
            if 244 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 25652
                    continue 
                idx = idx - 1
                s = s << 16 or 1681129472
                continue 
            if 245 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 25653
                    continue 
                idx = idx - 1
                s = s << 16 or 1681195008
                continue 
            if 246 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 25654
                    continue 
                idx = idx - 1
                s = s << 16 or 1681260544
                continue 
            if 247 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 25655
                    continue 
                idx = idx - 1
                s = s << 16 or 1681326080
                continue 
            if 248 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 25656
                    continue 
                idx = idx - 1
                s = s << 16 or 1681391616
                continue 
            if 249 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 25657
                    continue 
                idx = idx - 1
                s = s << 16 or 1681457152
                continue 
            if 250 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 25697
                    continue 
                idx = idx - 1
                s = s << 16 or 1684078592
                continue 
            if 251 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 25698
                    continue 
                idx = idx - 1
                s = s << 16 or 1684144128
                continue 
            if 252 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 25699
                    continue 
                idx = idx - 1
                s = s << 16 or 1684209664
                continue 
            if 253 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 25700
                    continue 
                idx = idx - 1
                s = s << 16 or 1684275200
                continue 
            if 254 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 25701
                    continue 
                idx = idx - 1
                s = s << 16 or 1684340736
                continue 
            if uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240 != 255:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 25600
                    continue 
                idx = idx - 1
                s = s << 16 or 1677721600
                continue 
            if 16 == uint8(idx):
                idx = idx - 1
                s = s or 25702
                continue 
            idx = idx - 1
            s = s << 16 or 1684406272
            continue 
        if 254 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) / 16 or 240:
            if uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240 == 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 25904
                    continue 
                idx = idx - 1
                s = s << 16 or 1697644544
                continue 
            if 241 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 25905
                    continue 
                idx = idx - 1
                s = s << 16 or 1697710080
                continue 
            if 242 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 25906
                    continue 
                idx = idx - 1
                s = s << 16 or 1697775616
                continue 
            if 243 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 25907
                    continue 
                idx = idx - 1
                s = s << 16 or 1697841152
                continue 
            if 244 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 25908
                    continue 
                idx = idx - 1
                s = s << 16 or 1697906688
                continue 
            if 245 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 25909
                    continue 
                idx = idx - 1
                s = s << 16 or 1697972224
                continue 
            if 246 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 25910
                    continue 
                idx = idx - 1
                s = s << 16 or 1698037760
                continue 
            if 247 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 25911
                    continue 
                idx = idx - 1
                s = s << 16 or 1698103296
                continue 
            if 248 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 25912
                    continue 
                idx = idx - 1
                s = s << 16 or 1698168832
                continue 
            if 249 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 25913
                    continue 
                idx = idx - 1
                s = s << 16 or 1698234368
                continue 
            if 250 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 25953
                    continue 
                idx = idx - 1
                s = s << 16 or 1700855808
                continue 
            if 251 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 25954
                    continue 
                idx = idx - 1
                s = s << 16 or 1700921344
                continue 
            if 252 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 25955
                    continue 
                idx = idx - 1
                s = s << 16 or 1700986880
                continue 
            if 253 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 25956
                    continue 
                idx = idx - 1
                s = s << 16 or 1701052416
                continue 
            if 254 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 25957
                    continue 
                idx = idx - 1
                s = s << 16 or 1701117952
                continue 
            if uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240 != 255:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 25856
                    continue 
                idx = idx - 1
                s = s << 16 or 1694498816
                continue 
            if 16 == uint8(idx):
                idx = idx - 1
                s = s or 25958
                continue 
            idx = idx - 1
            s = s << 16 or 1701183488
            continue 
        if uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) / 16 or 240 != 255:
            if uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240 == 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 48
                    continue 
                idx = idx - 1
                s = s << 16 or 3145728
                continue 
            if 241 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 49
                    continue 
                idx = idx - 1
                s = s << 16 or 3211264
                continue 
            if 242 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 50
                    continue 
                idx = idx - 1
                s = s << 16 or 3276800
                continue 
            if 243 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 51
                    continue 
                idx = idx - 1
                s = s << 16 or 3342336
                continue 
            if 244 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 52
                    continue 
                idx = idx - 1
                s = s << 16 or 3407872
                continue 
            if 245 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 53
                    continue 
                idx = idx - 1
                s = s << 16 or 3473408
                continue 
            if 246 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 54
                    continue 
                idx = idx - 1
                s = s << 16 or 3538944
                continue 
            if 247 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 55
                    continue 
                idx = idx - 1
                s = s << 16 or 3604480
                continue 
            if 248 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 56
                    continue 
                idx = idx - 1
                s = s << 16 or 3670016
                continue 
            if 249 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 57
                    continue 
                idx = idx - 1
                s = s << 16 or 3735552
                continue 
            if 250 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 97
                    continue 
                idx = idx - 1
                s = s << 16 or 6356992
                continue 
            if 251 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 98
                    continue 
                idx = idx - 1
                s = s << 16 or 6422528
                continue 
            if 252 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 99
                    continue 
                idx = idx - 1
                s = s << 16 or 6488064
                continue 
            if 253 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 100
                    continue 
                idx = idx - 1
                s = s << 16 or 6553600
                continue 
            if 254 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s or 101
                    continue 
                idx = idx - 1
                s = s << 16 or 6619136
                continue 
            if uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240 != 255:
                if 16 == uint8(idx):
                    idx = idx - 1
                    s = s
                    continue 
                idx = idx - 1
                s = s << 16
                continue 
            if 16 == uint8(idx):
                idx = idx - 1
                s = s or 102
                continue 
            idx = idx - 1
            s = s << 16 or 6684672
            continue 
        if uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240 == 240:
            if 16 == uint8(idx):
                idx = idx - 1
                s = s or 26160
                continue 
            idx = idx - 1
            s = s << 16 or 1714421760
            continue 
        if 241 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
            if 16 == uint8(idx):
                idx = idx - 1
                s = s or 26161
                continue 
            idx = idx - 1
            s = s << 16 or 1714487296
            continue 
        if 242 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
            if 16 == uint8(idx):
                idx = idx - 1
                s = s or 26162
                continue 
            idx = idx - 1
            s = s << 16 or 1714552832
            continue 
        if 243 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
            if 16 == uint8(idx):
                idx = idx - 1
                s = s or 26163
                continue 
            idx = idx - 1
            s = s << 16 or 1714618368
            continue 
        if 244 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
            if 16 == uint8(idx):
                idx = idx - 1
                s = s or 26164
                continue 
            idx = idx - 1
            s = s << 16 or 1714683904
            continue 
        if 245 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
            if 16 == uint8(idx):
                idx = idx - 1
                s = s or 26165
                continue 
            idx = idx - 1
            s = s << 16 or 1714749440
            continue 
        if 246 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
            if 16 == uint8(idx):
                idx = idx - 1
                s = s or 26166
                continue 
            idx = idx - 1
            s = s << 16 or 1714814976
            continue 
        if 247 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
            if 16 == uint8(idx):
                idx = idx - 1
                s = s or 26167
                continue 
            idx = idx - 1
            s = s << 16 or 1714880512
            continue 
        if 248 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
            if 16 == uint8(idx):
                idx = idx - 1
                s = s or 26168
                continue 
            idx = idx - 1
            s = s << 16 or 1714946048
            continue 
        if 249 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
            if 16 == uint8(idx):
                idx = idx - 1
                s = s or 26169
                continue 
            idx = idx - 1
            s = s << 16 or 1715011584
            continue 
        if 250 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
            if 16 == uint8(idx):
                idx = idx - 1
                s = s or 26209
                continue 
            idx = idx - 1
            s = s << 16 or 1717633024
            continue 
        if 251 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
            if 16 == uint8(idx):
                idx = idx - 1
                s = s or 26210
                continue 
            idx = idx - 1
            s = s << 16 or 1717698560
            continue 
        if 252 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
            if 16 == uint8(idx):
                idx = idx - 1
                s = s or 26211
                continue 
            idx = idx - 1
            s = s << 16 or 1717764096
            continue 
        if 253 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
            if 16 == uint8(idx):
                idx = idx - 1
                s = s or 26212
                continue 
            idx = idx - 1
            s = s << 16 or 1717829632
            continue 
        if 254 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
            if 16 == uint8(idx):
                idx = idx - 1
                s = s or 26213
                continue 
            idx = idx - 1
            s = s << 16 or 1717895168
            continue 
        if uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240 != 255:
            if 16 == uint8(idx):
                idx = idx - 1
                s = s or 26112
                continue 
            idx = idx - 1
            s = s << 16 or 1711276032
            continue 
        if 16 == uint8(idx):
            idx = idx - 1
            s = s or 26214
            continue 
        idx = idx - 1
        s = s << 16 or 1717960704
        continue 
    idx = 15
    s = 0
    while uint8(idx) < 255:
        if uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) / 16 or 240 == 240:
            if uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240 == 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 12336
                    continue 
                idx = idx - 1
                s = s << 16 or 808452096
                continue 
            if 241 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 12337
                    continue 
                idx = idx - 1
                s = s << 16 or 808517632
                continue 
            if 242 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 12338
                    continue 
                idx = idx - 1
                s = s << 16 or 808583168
                continue 
            if 243 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 12339
                    continue 
                idx = idx - 1
                s = s << 16 or 808648704
                continue 
            if 244 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 12340
                    continue 
                idx = idx - 1
                s = s << 16 or 808714240
                continue 
            if 245 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 12341
                    continue 
                idx = idx - 1
                s = s << 16 or 808779776
                continue 
            if 246 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 12342
                    continue 
                idx = idx - 1
                s = s << 16 or 808845312
                continue 
            if 247 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 12343
                    continue 
                idx = idx - 1
                s = s << 16 or 808910848
                continue 
            if 248 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 12344
                    continue 
                idx = idx - 1
                s = s << 16 or 808976384
                continue 
            if 249 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 12345
                    continue 
                idx = idx - 1
                s = s << 16 or 809041920
                continue 
            if 250 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 12385
                    continue 
                idx = idx - 1
                s = s << 16 or 811663360
                continue 
            if 251 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 12386
                    continue 
                idx = idx - 1
                s = s << 16 or 811728896
                continue 
            if 252 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 12387
                    continue 
                idx = idx - 1
                s = s << 16 or 811794432
                continue 
            if 253 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 12388
                    continue 
                idx = idx - 1
                s = s << 16 or 811859968
                continue 
            if 254 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 12389
                    continue 
                idx = idx - 1
                s = s << 16 or 811925504
                continue 
            if uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240 != 255:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 12288
                    continue 
                idx = idx - 1
                s = s << 16 or 805306368
                continue 
            if 0 == uint8(idx):
                idx = idx - 1
                s = s or 12390
                continue 
            idx = idx - 1
            s = s << 16 or 811991040
            continue 
        if 241 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) / 16 or 240:
            if uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240 == 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 12592
                    continue 
                idx = idx - 1
                s = s << 16 or 825229312
                continue 
            if 241 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 12593
                    continue 
                idx = idx - 1
                s = s << 16 or 825294848
                continue 
            if 242 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 12594
                    continue 
                idx = idx - 1
                s = s << 16 or 825360384
                continue 
            if 243 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 12595
                    continue 
                idx = idx - 1
                s = s << 16 or 825425920
                continue 
            if 244 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 12596
                    continue 
                idx = idx - 1
                s = s << 16 or 825491456
                continue 
            if 245 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 12597
                    continue 
                idx = idx - 1
                s = s << 16 or 825556992
                continue 
            if 246 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 12598
                    continue 
                idx = idx - 1
                s = s << 16 or 825622528
                continue 
            if 247 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 12599
                    continue 
                idx = idx - 1
                s = s << 16 or 825688064
                continue 
            if 248 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 12600
                    continue 
                idx = idx - 1
                s = s << 16 or 229376 * 3600
                continue 
            if 249 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 12601
                    continue 
                idx = idx - 1
                s = s << 16 or 825819136
                continue 
            if 250 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 12641
                    continue 
                idx = idx - 1
                s = s << 16 or 828440576
                continue 
            if 251 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 12642
                    continue 
                idx = idx - 1
                s = s << 16 or 828506112
                continue 
            if 252 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 12643
                    continue 
                idx = idx - 1
                s = s << 16 or 828571648
                continue 
            if 253 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 12644
                    continue 
                idx = idx - 1
                s = s << 16 or 828637184
                continue 
            if 254 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 12645
                    continue 
                idx = idx - 1
                s = s << 16 or 828702720
                continue 
            if uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240 != 255:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 12544
                    continue 
                idx = idx - 1
                s = s << 16 or 822083584
                continue 
            if 0 == uint8(idx):
                idx = idx - 1
                s = s or 12646
                continue 
            idx = idx - 1
            s = s << 16 or 828768256
            continue 
        if 242 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) / 16 or 240:
            if uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240 == 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 12848
                    continue 
                idx = idx - 1
                s = s << 16 or 842006528
                continue 
            if 241 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 12849
                    continue 
                idx = idx - 1
                s = s << 16 or 842072064
                continue 
            if 242 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 12850
                    continue 
                idx = idx - 1
                s = s << 16 or 842137600
                continue 
            if 243 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 12851
                    continue 
                idx = idx - 1
                s = s << 16 or 842203136
                continue 
            if 244 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 12852
                    continue 
                idx = idx - 1
                s = s << 16 or 842268672
                continue 
            if 245 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 12853
                    continue 
                idx = idx - 1
                s = s << 16 or 842334208
                continue 
            if 246 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 12854
                    continue 
                idx = idx - 1
                s = s << 16 or 842399744
                continue 
            if 247 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 12855
                    continue 
                idx = idx - 1
                s = s << 16 or 842465280
                continue 
            if 248 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 12856
                    continue 
                idx = idx - 1
                s = s << 16 or 842530816
                continue 
            if 249 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 12857
                    continue 
                idx = idx - 1
                s = s << 16 or 842596352
                continue 
            if 250 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 12897
                    continue 
                idx = idx - 1
                s = s << 16 or 845217792
                continue 
            if 251 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 12898
                    continue 
                idx = idx - 1
                s = s << 16 or 845283328
                continue 
            if 252 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 12899
                    continue 
                idx = idx - 1
                s = s << 16 or 845348864
                continue 
            if 253 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 12900
                    continue 
                idx = idx - 1
                s = s << 16 or 845414400
                continue 
            if 254 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 12901
                    continue 
                idx = idx - 1
                s = s << 16 or 845479936
                continue 
            if uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240 != 255:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 12800
                    continue 
                idx = idx - 1
                s = s << 16 or 838860800
                continue 
            if 0 == uint8(idx):
                idx = idx - 1
                s = s or 12902
                continue 
            idx = idx - 1
            s = s << 16 or 845545472
            continue 
        if 243 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) / 16 or 240:
            if uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240 == 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 13104
                    continue 
                idx = idx - 1
                s = s << 16 or 858783744
                continue 
            if 241 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 13105
                    continue 
                idx = idx - 1
                s = s << 16 or 858849280
                continue 
            if 242 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 13106
                    continue 
                idx = idx - 1
                s = s << 16 or 858914816
                continue 
            if 243 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 13107
                    continue 
                idx = idx - 1
                s = s << 16 or 858980352
                continue 
            if 244 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 13108
                    continue 
                idx = idx - 1
                s = s << 16 or 859045888
                continue 
            if 245 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 13109
                    continue 
                idx = idx - 1
                s = s << 16 or 859111424
                continue 
            if 246 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 13110
                    continue 
                idx = idx - 1
                s = s << 16 or 859176960
                continue 
            if 247 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 13111
                    continue 
                idx = idx - 1
                s = s << 16 or 859242496
                continue 
            if 248 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 13112
                    continue 
                idx = idx - 1
                s = s << 16 or 859308032
                continue 
            if 249 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 13113
                    continue 
                idx = idx - 1
                s = s << 16 or 859373568
                continue 
            if 250 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 13153
                    continue 
                idx = idx - 1
                s = s << 16 or 861995008
                continue 
            if 251 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 13154
                    continue 
                idx = idx - 1
                s = s << 16 or 862060544
                continue 
            if 252 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 13155
                    continue 
                idx = idx - 1
                s = s << 16 or 862126080
                continue 
            if 253 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 13156
                    continue 
                idx = idx - 1
                s = s << 16 or 862191616
                continue 
            if 254 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 13157
                    continue 
                idx = idx - 1
                s = s << 16 or 862257152
                continue 
            if uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240 != 255:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 13056
                    continue 
                idx = idx - 1
                s = s << 16 or 855638016
                continue 
            if 0 == uint8(idx):
                idx = idx - 1
                s = s or 13158
                continue 
            idx = idx - 1
            s = s << 16 or 862322688
            continue 
        if 244 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) / 16 or 240:
            if uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240 == 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 13360
                    continue 
                idx = idx - 1
                s = s << 16 or 875560960
                continue 
            if 241 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 13361
                    continue 
                idx = idx - 1
                s = s << 16 or 875626496
                continue 
            if 242 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 13362
                    continue 
                idx = idx - 1
                s = s << 16 or 875692032
                continue 
            if 243 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 13363
                    continue 
                idx = idx - 1
                s = s << 16 or 875757568
                continue 
            if 244 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 13364
                    continue 
                idx = idx - 1
                s = s << 16 or 875823104
                continue 
            if 245 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 13365
                    continue 
                idx = idx - 1
                s = s << 16 or 875888640
                continue 
            if 246 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 13366
                    continue 
                idx = idx - 1
                s = s << 16 or 875954176
                continue 
            if 247 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 13367
                    continue 
                idx = idx - 1
                s = s << 16 or 876019712
                continue 
            if 248 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 13368
                    continue 
                idx = idx - 1
                s = s << 16 or 876085248
                continue 
            if 249 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 13369
                    continue 
                idx = idx - 1
                s = s << 16 or 876150784
                continue 
            if 250 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 13409
                    continue 
                idx = idx - 1
                s = s << 16 or 878772224
                continue 
            if 251 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 13410
                    continue 
                idx = idx - 1
                s = s << 16 or 878837760
                continue 
            if 252 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 13411
                    continue 
                idx = idx - 1
                s = s << 16 or 878903296
                continue 
            if 253 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 13412
                    continue 
                idx = idx - 1
                s = s << 16 or 878968832
                continue 
            if 254 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 13413
                    continue 
                idx = idx - 1
                s = s << 16 or 879034368
                continue 
            if uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240 != 255:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 13312
                    continue 
                idx = idx - 1
                s = s << 16 or 872415232
                continue 
            if 0 == uint8(idx):
                idx = idx - 1
                s = s or 13414
                continue 
            idx = idx - 1
            s = s << 16 or 879099904
            continue 
        if 245 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) / 16 or 240:
            if uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240 == 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 13616
                    continue 
                idx = idx - 1
                s = s << 16 or 892338176
                continue 
            if 241 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 13617
                    continue 
                idx = idx - 1
                s = s << 16 or 892403712
                continue 
            if 242 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 13618
                    continue 
                idx = idx - 1
                s = s << 16 or 892469248
                continue 
            if 243 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 13619
                    continue 
                idx = idx - 1
                s = s << 16 or 892534784
                continue 
            if 244 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 13620
                    continue 
                idx = idx - 1
                s = s << 16 or 892600320
                continue 
            if 245 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 13621
                    continue 
                idx = idx - 1
                s = s << 16 or 892665856
                continue 
            if 246 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 13622
                    continue 
                idx = idx - 1
                s = s << 16 or 892731392
                continue 
            if 247 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 13623
                    continue 
                idx = idx - 1
                s = s << 16 or 892796928
                continue 
            if 248 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 13624
                    continue 
                idx = idx - 1
                s = s << 16 or 892862464
                continue 
            if 249 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 13625
                    continue 
                idx = idx - 1
                s = s << 16 or 892928000
                continue 
            if 250 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 13665
                    continue 
                idx = idx - 1
                s = s << 16 or 895549440
                continue 
            if 251 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 13666
                    continue 
                idx = idx - 1
                s = s << 16 or 895614976
                continue 
            if 252 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 13667
                    continue 
                idx = idx - 1
                s = s << 16 or 895680512
                continue 
            if 253 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 13668
                    continue 
                idx = idx - 1
                s = s << 16 or 895746048
                continue 
            if 254 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 13669
                    continue 
                idx = idx - 1
                s = s << 16 or 895811584
                continue 
            if uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240 != 255:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 13568
                    continue 
                idx = idx - 1
                s = s << 16 or 889192448
                continue 
            if 0 == uint8(idx):
                idx = idx - 1
                s = s or 13670
                continue 
            idx = idx - 1
            s = s << 16 or 895877120
            continue 
        if 246 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) / 16 or 240:
            if uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240 == 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 13872
                    continue 
                idx = idx - 1
                s = s << 16 or 909115392
                continue 
            if 241 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 13873
                    continue 
                idx = idx - 1
                s = s << 16 or 909180928
                continue 
            if 242 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 13874
                    continue 
                idx = idx - 1
                s = s << 16 or 909246464
                continue 
            if 243 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 13875
                    continue 
                idx = idx - 1
                s = s << 16 or 909312000
                continue 
            if 244 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 13876
                    continue 
                idx = idx - 1
                s = s << 16 or 909377536
                continue 
            if 245 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 13877
                    continue 
                idx = idx - 1
                s = s << 16 or 909443072
                continue 
            if 246 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 13878
                    continue 
                idx = idx - 1
                s = s << 16 or 909508608
                continue 
            if 247 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 13879
                    continue 
                idx = idx - 1
                s = s << 16 or 909574144
                continue 
            if 248 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 13880
                    continue 
                idx = idx - 1
                s = s << 16 or 909639680
                continue 
            if 249 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 13881
                    continue 
                idx = idx - 1
                s = s << 16 or 909705216
                continue 
            if 250 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 13921
                    continue 
                idx = idx - 1
                s = s << 16 or 912326656
                continue 
            if 251 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 13922
                    continue 
                idx = idx - 1
                s = s << 16 or 912392192
                continue 
            if 252 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 13923
                    continue 
                idx = idx - 1
                s = s << 16 or 912457728
                continue 
            if 253 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 13924
                    continue 
                idx = idx - 1
                s = s << 16 or 912523264
                continue 
            if 254 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 13925
                    continue 
                idx = idx - 1
                s = s << 16 or 912588800
                continue 
            if uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240 != 255:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 13824
                    continue 
                idx = idx - 1
                s = s << 16 or 905969664
                continue 
            if 0 == uint8(idx):
                idx = idx - 1
                s = s or 13926
                continue 
            idx = idx - 1
            s = s << 16 or 912654336
            continue 
        if 247 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) / 16 or 240:
            if uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240 == 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 14128
                    continue 
                idx = idx - 1
                s = s << 16 or 925892608
                continue 
            if 241 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 14129
                    continue 
                idx = idx - 1
                s = s << 16 or 925958144
                continue 
            if 242 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 14130
                    continue 
                idx = idx - 1
                s = s << 16 or 926023680
                continue 
            if 243 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 14131
                    continue 
                idx = idx - 1
                s = s << 16 or 926089216
                continue 
            if 244 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 14132
                    continue 
                idx = idx - 1
                s = s << 16 or 926154752
                continue 
            if 245 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 14133
                    continue 
                idx = idx - 1
                s = s << 16 or 926220288
                continue 
            if 246 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 14134
                    continue 
                idx = idx - 1
                s = s << 16 or 926285824
                continue 
            if 247 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 14135
                    continue 
                idx = idx - 1
                s = s << 16 or 926351360
                continue 
            if 248 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 14136
                    continue 
                idx = idx - 1
                s = s << 16 or 926416896
                continue 
            if 249 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 14137
                    continue 
                idx = idx - 1
                s = s << 16 or 926482432
                continue 
            if 250 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 14177
                    continue 
                idx = idx - 1
                s = s << 16 or 929103872
                continue 
            if 251 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 14178
                    continue 
                idx = idx - 1
                s = s << 16 or 929169408
                continue 
            if 252 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 14179
                    continue 
                idx = idx - 1
                s = s << 16 or 929234944
                continue 
            if 253 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 14180
                    continue 
                idx = idx - 1
                s = s << 16 or 929300480
                continue 
            if 254 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 14181
                    continue 
                idx = idx - 1
                s = s << 16 or 929366016
                continue 
            if uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240 != 255:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 14080
                    continue 
                idx = idx - 1
                s = s << 16 or 922746880
                continue 
            if 0 == uint8(idx):
                idx = idx - 1
                s = s or 14182
                continue 
            idx = idx - 1
            s = s << 16 or 929431552
            continue 
        if 248 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) / 16 or 240:
            if uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240 == 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 14384
                    continue 
                idx = idx - 1
                s = s << 16 or 942669824
                continue 
            if 241 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 14385
                    continue 
                idx = idx - 1
                s = s << 16 or 942735360
                continue 
            if 242 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 14386
                    continue 
                idx = idx - 1
                s = s << 16 or 942800896
                continue 
            if 243 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 14387
                    continue 
                idx = idx - 1
                s = s << 16 or 942866432
                continue 
            if 244 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 14388
                    continue 
                idx = idx - 1
                s = s << 16 or 942931968
                continue 
            if 245 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 14389
                    continue 
                idx = idx - 1
                s = s << 16 or 942997504
                continue 
            if 246 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 14390
                    continue 
                idx = idx - 1
                s = s << 16 or 943063040
                continue 
            if 247 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 14391
                    continue 
                idx = idx - 1
                s = s << 16 or 943128576
                continue 
            if 248 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 14392
                    continue 
                idx = idx - 1
                s = s << 16 or 943194112
                continue 
            if 249 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 14393
                    continue 
                idx = idx - 1
                s = s << 16 or 943259648
                continue 
            if 250 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 14433
                    continue 
                idx = idx - 1
                s = s << 16 or 945881088
                continue 
            if 251 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 14434
                    continue 
                idx = idx - 1
                s = s << 16 or 945946624
                continue 
            if 252 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 14435
                    continue 
                idx = idx - 1
                s = s << 16 or 946012160
                continue 
            if 253 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 14436
                    continue 
                idx = idx - 1
                s = s << 16 or 946077696
                continue 
            if 254 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 14437
                    continue 
                idx = idx - 1
                s = s << 16 or 946143232
                continue 
            if uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240 != 255:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 14336
                    continue 
                idx = idx - 1
                s = s << 16 or 939524096
                continue 
            if 0 == uint8(idx):
                idx = idx - 1
                s = s or 14438
                continue 
            idx = idx - 1
            s = s << 16 or 946208768
            continue 
        if 249 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) / 16 or 240:
            if uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240 == 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 14640
                    continue 
                idx = idx - 1
                s = s << 16 or 959447040
                continue 
            if 241 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 14641
                    continue 
                idx = idx - 1
                s = s << 16 or 959512576
                continue 
            if 242 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 14642
                    continue 
                idx = idx - 1
                s = s << 16 or 959578112
                continue 
            if 243 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 14643
                    continue 
                idx = idx - 1
                s = s << 16 or 959643648
                continue 
            if 244 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 14644
                    continue 
                idx = idx - 1
                s = s << 16 or 959709184
                continue 
            if 245 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 14645
                    continue 
                idx = idx - 1
                s = s << 16 or 959774720
                continue 
            if 246 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 14646
                    continue 
                idx = idx - 1
                s = s << 16 or 959840256
                continue 
            if 247 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 14647
                    continue 
                idx = idx - 1
                s = s << 16 or 959905792
                continue 
            if 248 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 14648
                    continue 
                idx = idx - 1
                s = s << 16 or 959971328
                continue 
            if 249 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 14649
                    continue 
                idx = idx - 1
                s = s << 16 or 960036864
                continue 
            if 250 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 14689
                    continue 
                idx = idx - 1
                s = s << 16 or 962658304
                continue 
            if 251 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 14690
                    continue 
                idx = idx - 1
                s = s << 16 or 962723840
                continue 
            if 252 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 14691
                    continue 
                idx = idx - 1
                s = s << 16 or 962789376
                continue 
            if 253 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 14692
                    continue 
                idx = idx - 1
                s = s << 16 or 962854912
                continue 
            if 254 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 14693
                    continue 
                idx = idx - 1
                s = s << 16 or 962920448
                continue 
            if uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240 != 255:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 14592
                    continue 
                idx = idx - 1
                s = s << 16 or 956301312
                continue 
            if 0 == uint8(idx):
                idx = idx - 1
                s = s or 14694
                continue 
            idx = idx - 1
            s = s << 16 or 962985984
            continue 
        if 250 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) / 16 or 240:
            if uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240 == 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 24880
                    continue 
                idx = idx - 1
                s = s << 16 or 1630535680
                continue 
            if 241 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 24881
                    continue 
                idx = idx - 1
                s = s << 16 or 1630601216
                continue 
            if 242 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 24882
                    continue 
                idx = idx - 1
                s = s << 16 or 1630666752
                continue 
            if 243 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 24883
                    continue 
                idx = idx - 1
                s = s << 16 or 1630732288
                continue 
            if 244 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 24884
                    continue 
                idx = idx - 1
                s = s << 16 or 1630797824
                continue 
            if 245 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 24885
                    continue 
                idx = idx - 1
                s = s << 16 or 1630863360
                continue 
            if 246 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 24886
                    continue 
                idx = idx - 1
                s = s << 16 or 1630928896
                continue 
            if 247 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 24887
                    continue 
                idx = idx - 1
                s = s << 16 or 1630994432
                continue 
            if 248 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 24888
                    continue 
                idx = idx - 1
                s = s << 16 or 1631059968
                continue 
            if 249 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 24889
                    continue 
                idx = idx - 1
                s = s << 16 or 1631125504
                continue 
            if 250 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 24929
                    continue 
                idx = idx - 1
                s = s << 16 or 1633746944
                continue 
            if 251 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 24930
                    continue 
                idx = idx - 1
                s = s << 16 or 1633812480
                continue 
            if 252 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 24931
                    continue 
                idx = idx - 1
                s = s << 16 or 1633878016
                continue 
            if 253 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 24932
                    continue 
                idx = idx - 1
                s = s << 16 or 1633943552
                continue 
            if 254 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 24933
                    continue 
                idx = idx - 1
                s = s << 16 or 1634009088
                continue 
            if uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240 != 255:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 24832
                    continue 
                idx = idx - 1
                s = s << 16 or 1627389952
                continue 
            if 0 == uint8(idx):
                idx = idx - 1
                s = s or 24934
                continue 
            idx = idx - 1
            s = s << 16 or 1634074624
            continue 
        if 251 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) / 16 or 240:
            if uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240 == 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 25136
                    continue 
                idx = idx - 1
                s = s << 16 or 1647312896
                continue 
            if 241 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 25137
                    continue 
                idx = idx - 1
                s = s << 16 or 1647378432
                continue 
            if 242 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 25138
                    continue 
                idx = idx - 1
                s = s << 16 or 1647443968
                continue 
            if 243 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 25139
                    continue 
                idx = idx - 1
                s = s << 16 or 1647509504
                continue 
            if 244 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 25140
                    continue 
                idx = idx - 1
                s = s << 16 or 1647575040
                continue 
            if 245 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 25141
                    continue 
                idx = idx - 1
                s = s << 16 or 1647640576
                continue 
            if 246 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 25142
                    continue 
                idx = idx - 1
                s = s << 16 or 1647706112
                continue 
            if 247 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 25143
                    continue 
                idx = idx - 1
                s = s << 16 or 1647771648
                continue 
            if 248 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 25144
                    continue 
                idx = idx - 1
                s = s << 16 or 1647837184
                continue 
            if 249 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 25145
                    continue 
                idx = idx - 1
                s = s << 16 or 1647902720
                continue 
            if 250 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 25185
                    continue 
                idx = idx - 1
                s = s << 16 or 1650524160
                continue 
            if 251 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 25186
                    continue 
                idx = idx - 1
                s = s << 16 or 1650589696
                continue 
            if 252 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 25187
                    continue 
                idx = idx - 1
                s = s << 16 or 1650655232
                continue 
            if 253 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 25188
                    continue 
                idx = idx - 1
                s = s << 16 or 1650720768
                continue 
            if 254 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 25189
                    continue 
                idx = idx - 1
                s = s << 16 or 1650786304
                continue 
            if uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240 != 255:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 25088
                    continue 
                idx = idx - 1
                s = s << 16 or 1644167168
                continue 
            if 0 == uint8(idx):
                idx = idx - 1
                s = s or 25190
                continue 
            idx = idx - 1
            s = s << 16 or 1650851840
            continue 
        if 252 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) / 16 or 240:
            if uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240 == 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 25392
                    continue 
                idx = idx - 1
                s = s << 16 or 1664090112
                continue 
            if 241 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 25393
                    continue 
                idx = idx - 1
                s = s << 16 or 1664155648
                continue 
            if 242 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 25394
                    continue 
                idx = idx - 1
                s = s << 16 or 1664221184
                continue 
            if 243 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 25395
                    continue 
                idx = idx - 1
                s = s << 16 or 1664286720
                continue 
            if 244 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 25396
                    continue 
                idx = idx - 1
                s = s << 16 or 1664352256
                continue 
            if 245 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 25397
                    continue 
                idx = idx - 1
                s = s << 16 or 1664417792
                continue 
            if 246 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 25398
                    continue 
                idx = idx - 1
                s = s << 16 or 1664483328
                continue 
            if 247 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 25399
                    continue 
                idx = idx - 1
                s = s << 16 or 1664548864
                continue 
            if 248 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 25400
                    continue 
                idx = idx - 1
                s = s << 16 or 1664614400
                continue 
            if 249 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 25401
                    continue 
                idx = idx - 1
                s = s << 16 or 1664679936
                continue 
            if 250 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 25441
                    continue 
                idx = idx - 1
                s = s << 16 or 1667301376
                continue 
            if 251 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 25442
                    continue 
                idx = idx - 1
                s = s << 16 or 1667366912
                continue 
            if 252 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 25443
                    continue 
                idx = idx - 1
                s = s << 16 or 1667432448
                continue 
            if 253 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 25444
                    continue 
                idx = idx - 1
                s = s << 16 or 1667497984
                continue 
            if 254 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 25445
                    continue 
                idx = idx - 1
                s = s << 16 or 1667563520
                continue 
            if uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240 != 255:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 25344
                    continue 
                idx = idx - 1
                s = s << 16 or 1660944384
                continue 
            if 0 == uint8(idx):
                idx = idx - 1
                s = s or 25446
                continue 
            idx = idx - 1
            s = s << 16 or 1667629056
            continue 
        if 253 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) / 16 or 240:
            if uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240 == 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 25648
                    continue 
                idx = idx - 1
                s = s << 16 or 1680867328
                continue 
            if 241 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 25649
                    continue 
                idx = idx - 1
                s = s << 16 or 1680932864
                continue 
            if 242 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 25650
                    continue 
                idx = idx - 1
                s = s << 16 or 466944 * 24 * 3600
                continue 
            if 243 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 25651
                    continue 
                idx = idx - 1
                s = s << 16 or 1681063936
                continue 
            if 244 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 25652
                    continue 
                idx = idx - 1
                s = s << 16 or 1681129472
                continue 
            if 245 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 25653
                    continue 
                idx = idx - 1
                s = s << 16 or 1681195008
                continue 
            if 246 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 25654
                    continue 
                idx = idx - 1
                s = s << 16 or 1681260544
                continue 
            if 247 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 25655
                    continue 
                idx = idx - 1
                s = s << 16 or 1681326080
                continue 
            if 248 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 25656
                    continue 
                idx = idx - 1
                s = s << 16 or 1681391616
                continue 
            if 249 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 25657
                    continue 
                idx = idx - 1
                s = s << 16 or 1681457152
                continue 
            if 250 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 25697
                    continue 
                idx = idx - 1
                s = s << 16 or 1684078592
                continue 
            if 251 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 25698
                    continue 
                idx = idx - 1
                s = s << 16 or 1684144128
                continue 
            if 252 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 25699
                    continue 
                idx = idx - 1
                s = s << 16 or 1684209664
                continue 
            if 253 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 25700
                    continue 
                idx = idx - 1
                s = s << 16 or 1684275200
                continue 
            if 254 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 25701
                    continue 
                idx = idx - 1
                s = s << 16 or 1684340736
                continue 
            if uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240 != 255:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 25600
                    continue 
                idx = idx - 1
                s = s << 16 or 1677721600
                continue 
            if 0 == uint8(idx):
                idx = idx - 1
                s = s or 25702
                continue 
            idx = idx - 1
            s = s << 16 or 1684406272
            continue 
        if 254 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) / 16 or 240:
            if uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240 == 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 25904
                    continue 
                idx = idx - 1
                s = s << 16 or 1697644544
                continue 
            if 241 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 25905
                    continue 
                idx = idx - 1
                s = s << 16 or 1697710080
                continue 
            if 242 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 25906
                    continue 
                idx = idx - 1
                s = s << 16 or 1697775616
                continue 
            if 243 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 25907
                    continue 
                idx = idx - 1
                s = s << 16 or 1697841152
                continue 
            if 244 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 25908
                    continue 
                idx = idx - 1
                s = s << 16 or 1697906688
                continue 
            if 245 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 25909
                    continue 
                idx = idx - 1
                s = s << 16 or 1697972224
                continue 
            if 246 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 25910
                    continue 
                idx = idx - 1
                s = s << 16 or 1698037760
                continue 
            if 247 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 25911
                    continue 
                idx = idx - 1
                s = s << 16 or 1698103296
                continue 
            if 248 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 25912
                    continue 
                idx = idx - 1
                s = s << 16 or 1698168832
                continue 
            if 249 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 25913
                    continue 
                idx = idx - 1
                s = s << 16 or 1698234368
                continue 
            if 250 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 25953
                    continue 
                idx = idx - 1
                s = s << 16 or 1700855808
                continue 
            if 251 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 25954
                    continue 
                idx = idx - 1
                s = s << 16 or 1700921344
                continue 
            if 252 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 25955
                    continue 
                idx = idx - 1
                s = s << 16 or 1700986880
                continue 
            if 253 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 25956
                    continue 
                idx = idx - 1
                s = s << 16 or 1701052416
                continue 
            if 254 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 25957
                    continue 
                idx = idx - 1
                s = s << 16 or 1701117952
                continue 
            if uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240 != 255:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 25856
                    continue 
                idx = idx - 1
                s = s << 16 or 1694498816
                continue 
            if 0 == uint8(idx):
                idx = idx - 1
                s = s or 25958
                continue 
            idx = idx - 1
            s = s << 16 or 1701183488
            continue 
        if uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) / 16 or 240 != 255:
            if uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240 == 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 48
                    continue 
                idx = idx - 1
                s = s << 16 or 3145728
                continue 
            if 241 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 49
                    continue 
                idx = idx - 1
                s = s << 16 or 3211264
                continue 
            if 242 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 50
                    continue 
                idx = idx - 1
                s = s << 16 or 3276800
                continue 
            if 243 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 51
                    continue 
                idx = idx - 1
                s = s << 16 or 3342336
                continue 
            if 244 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 52
                    continue 
                idx = idx - 1
                s = s << 16 or 3407872
                continue 
            if 245 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 53
                    continue 
                idx = idx - 1
                s = s << 16 or 3473408
                continue 
            if 246 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 54
                    continue 
                idx = idx - 1
                s = s << 16 or 3538944
                continue 
            if 247 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 55
                    continue 
                idx = idx - 1
                s = s << 16 or 3604480
                continue 
            if 248 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 56
                    continue 
                idx = idx - 1
                s = s << 16 or 3670016
                continue 
            if 249 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 57
                    continue 
                idx = idx - 1
                s = s << 16 or 3735552
                continue 
            if 250 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 97
                    continue 
                idx = idx - 1
                s = s << 16 or 6356992
                continue 
            if 251 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 98
                    continue 
                idx = idx - 1
                s = s << 16 or 6422528
                continue 
            if 252 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 99
                    continue 
                idx = idx - 1
                s = s << 16 or 6488064
                continue 
            if 253 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 100
                    continue 
                idx = idx - 1
                s = s << 16 or 6553600
                continue 
            if 254 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s or 101
                    continue 
                idx = idx - 1
                s = s << 16 or 6619136
                continue 
            if uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240 != 255:
                if 0 == uint8(idx):
                    idx = idx - 1
                    s = s
                    continue 
                idx = idx - 1
                s = s << 16
                continue 
            if 0 == uint8(idx):
                idx = idx - 1
                s = s or 102
                continue 
            idx = idx - 1
            s = s << 16 or 6684672
            continue 
        if uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240 == 240:
            if 0 == uint8(idx):
                idx = idx - 1
                s = s or 26160
                continue 
            idx = idx - 1
            s = s << 16 or 1714421760
            continue 
        if 241 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
            if 0 == uint8(idx):
                idx = idx - 1
                s = s or 26161
                continue 
            idx = idx - 1
            s = s << 16 or 1714487296
            continue 
        if 242 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
            if 0 == uint8(idx):
                idx = idx - 1
                s = s or 26162
                continue 
            idx = idx - 1
            s = s << 16 or 1714552832
            continue 
        if 243 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
            if 0 == uint8(idx):
                idx = idx - 1
                s = s or 26163
                continue 
            idx = idx - 1
            s = s << 16 or 1714618368
            continue 
        if 244 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
            if 0 == uint8(idx):
                idx = idx - 1
                s = s or 26164
                continue 
            idx = idx - 1
            s = s << 16 or 1714683904
            continue 
        if 245 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
            if 0 == uint8(idx):
                idx = idx - 1
                s = s or 26165
                continue 
            idx = idx - 1
            s = s << 16 or 1714749440
            continue 
        if 246 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
            if 0 == uint8(idx):
                idx = idx - 1
                s = s or 26166
                continue 
            idx = idx - 1
            s = s << 16 or 1714814976
            continue 
        if 247 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
            if 0 == uint8(idx):
                idx = idx - 1
                s = s or 26167
                continue 
            idx = idx - 1
            s = s << 16 or 1714880512
            continue 
        if 248 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
            if 0 == uint8(idx):
                idx = idx - 1
                s = s or 26168
                continue 
            idx = idx - 1
            s = s << 16 or 1714946048
            continue 
        if 249 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
            if 0 == uint8(idx):
                idx = idx - 1
                s = s or 26169
                continue 
            idx = idx - 1
            s = s << 16 or 1715011584
            continue 
        if 250 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
            if 0 == uint8(idx):
                idx = idx - 1
                s = s or 26209
                continue 
            idx = idx - 1
            s = s << 16 or 1717633024
            continue 
        if 251 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
            if 0 == uint8(idx):
                idx = idx - 1
                s = s or 26210
                continue 
            idx = idx - 1
            s = s << 16 or 1717698560
            continue 
        if 252 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
            if 0 == uint8(idx):
                idx = idx - 1
                s = s or 26211
                continue 
            idx = idx - 1
            s = s << 16 or 1717764096
            continue 
        if 253 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
            if 0 == uint8(idx):
                idx = idx - 1
                s = s or 26212
                continue 
            idx = idx - 1
            s = s << 16 or 1717829632
            continue 
        if 254 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
            if 0 == uint8(idx):
                idx = idx - 1
                s = s or 26213
                continue 
            idx = idx - 1
            s = s << 16 or 1717895168
            continue 
        if uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240 != 255:
            if 0 == uint8(idx):
                idx = idx - 1
                s = s or 26112
                continue 
            idx = idx - 1
            s = s << 16 or 1711276032
            continue 
        if 0 == uint8(idx):
            idx = idx - 1
            s = s or 26214
            continue 
        idx = idx - 1
        s = s << 16 or 1717960704
        continue 
    revert with 0, 32, mem[ceil32(arg4.length) + 258 len floor32(0, 62) + 64]
}

function preFill(uint32 arg1, uint32 arg2, bytes arg3) {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    mem[96] = arg3.length
    mem[128 len arg3.length] = arg3[all]
    mem[arg3.length + 128] = 0
    if arg3.length < 0:
        revert with 0, 'Overflow during addition.'
    if arg3.length > ceil32(arg3.length):
        revert with 0, 'Validity assertion failed'
    if not arg3.length + 128:
        revert with 0, 'Validity assertion failed'
    if Mask(96, 0, arg3.length) != 133:
        revert with 0, 'Validity assertion failed'
    if not !(ceil32(arg3.length) + 128 < Mask(96, 0, (128 or Mask(16, 96, arg3.length) >> 96 or 0) + Mask(96, 0, arg3.length))):
        revert with 0, 'Validity assertion failed'
    idx = 31
    s = 0
    while uint8(idx) > 15:
        if 16 == uint8(idx):
            idx = idx - 1
            s = s or 12336
            continue 
        idx = idx - 1
        s = s << 16 or 808452096
        continue 
    idx = 15
    s = 0
    while uint8(idx) < 255:
        if 0 == uint8(idx):
            idx = idx - 1
            s = s or 12336
            continue 
        idx = idx - 1
        s = s << 16 or 808452096
        continue 
    idx = 31
    t = 0
    while uint8(idx) > 15:
        if uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) / 16 or 240 == 240:
            if uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240 == 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 12336
                    continue 
                idx = idx - 1
                t = t << 16 or 808452096
                continue 
            if 241 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 12337
                    continue 
                idx = idx - 1
                t = t << 16 or 808517632
                continue 
            if 242 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 12338
                    continue 
                idx = idx - 1
                t = t << 16 or 808583168
                continue 
            if 243 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 12339
                    continue 
                idx = idx - 1
                t = t << 16 or 808648704
                continue 
            if 244 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 12340
                    continue 
                idx = idx - 1
                t = t << 16 or 808714240
                continue 
            if 245 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 12341
                    continue 
                idx = idx - 1
                t = t << 16 or 808779776
                continue 
            if 246 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 12342
                    continue 
                idx = idx - 1
                t = t << 16 or 808845312
                continue 
            if 247 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 12343
                    continue 
                idx = idx - 1
                t = t << 16 or 808910848
                continue 
            if 248 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 12344
                    continue 
                idx = idx - 1
                t = t << 16 or 808976384
                continue 
            if 249 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 12345
                    continue 
                idx = idx - 1
                t = t << 16 or 809041920
                continue 
            if 250 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 12385
                    continue 
                idx = idx - 1
                t = t << 16 or 811663360
                continue 
            if 251 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 12386
                    continue 
                idx = idx - 1
                t = t << 16 or 811728896
                continue 
            if 252 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 12387
                    continue 
                idx = idx - 1
                t = t << 16 or 811794432
                continue 
            if 253 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 12388
                    continue 
                idx = idx - 1
                t = t << 16 or 811859968
                continue 
            if 254 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 12389
                    continue 
                idx = idx - 1
                t = t << 16 or 811925504
                continue 
            if uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240 != 255:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 12288
                    continue 
                idx = idx - 1
                t = t << 16 or 805306368
                continue 
            if 16 == uint8(idx):
                idx = idx - 1
                t = t or 12390
                continue 
            idx = idx - 1
            t = t << 16 or 811991040
            continue 
        if 241 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) / 16 or 240:
            if uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240 == 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 12592
                    continue 
                idx = idx - 1
                t = t << 16 or 825229312
                continue 
            if 241 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 12593
                    continue 
                idx = idx - 1
                t = t << 16 or 825294848
                continue 
            if 242 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 12594
                    continue 
                idx = idx - 1
                t = t << 16 or 825360384
                continue 
            if 243 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 12595
                    continue 
                idx = idx - 1
                t = t << 16 or 825425920
                continue 
            if 244 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 12596
                    continue 
                idx = idx - 1
                t = t << 16 or 825491456
                continue 
            if 245 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 12597
                    continue 
                idx = idx - 1
                t = t << 16 or 825556992
                continue 
            if 246 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 12598
                    continue 
                idx = idx - 1
                t = t << 16 or 825622528
                continue 
            if 247 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 12599
                    continue 
                idx = idx - 1
                t = t << 16 or 825688064
                continue 
            if 248 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 12600
                    continue 
                idx = idx - 1
                t = t << 16 or 229376 * 3600
                continue 
            if 249 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 12601
                    continue 
                idx = idx - 1
                t = t << 16 or 825819136
                continue 
            if 250 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 12641
                    continue 
                idx = idx - 1
                t = t << 16 or 828440576
                continue 
            if 251 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 12642
                    continue 
                idx = idx - 1
                t = t << 16 or 828506112
                continue 
            if 252 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 12643
                    continue 
                idx = idx - 1
                t = t << 16 or 828571648
                continue 
            if 253 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 12644
                    continue 
                idx = idx - 1
                t = t << 16 or 828637184
                continue 
            if 254 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 12645
                    continue 
                idx = idx - 1
                t = t << 16 or 828702720
                continue 
            if uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240 != 255:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 12544
                    continue 
                idx = idx - 1
                t = t << 16 or 822083584
                continue 
            if 16 == uint8(idx):
                idx = idx - 1
                t = t or 12646
                continue 
            idx = idx - 1
            t = t << 16 or 828768256
            continue 
        if 242 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) / 16 or 240:
            if uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240 == 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 12848
                    continue 
                idx = idx - 1
                t = t << 16 or 842006528
                continue 
            if 241 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 12849
                    continue 
                idx = idx - 1
                t = t << 16 or 842072064
                continue 
            if 242 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 12850
                    continue 
                idx = idx - 1
                t = t << 16 or 842137600
                continue 
            if 243 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 12851
                    continue 
                idx = idx - 1
                t = t << 16 or 842203136
                continue 
            if 244 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 12852
                    continue 
                idx = idx - 1
                t = t << 16 or 842268672
                continue 
            if 245 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 12853
                    continue 
                idx = idx - 1
                t = t << 16 or 842334208
                continue 
            if 246 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 12854
                    continue 
                idx = idx - 1
                t = t << 16 or 842399744
                continue 
            if 247 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 12855
                    continue 
                idx = idx - 1
                t = t << 16 or 842465280
                continue 
            if 248 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 12856
                    continue 
                idx = idx - 1
                t = t << 16 or 842530816
                continue 
            if 249 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 12857
                    continue 
                idx = idx - 1
                t = t << 16 or 842596352
                continue 
            if 250 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 12897
                    continue 
                idx = idx - 1
                t = t << 16 or 845217792
                continue 
            if 251 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 12898
                    continue 
                idx = idx - 1
                t = t << 16 or 845283328
                continue 
            if 252 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 12899
                    continue 
                idx = idx - 1
                t = t << 16 or 845348864
                continue 
            if 253 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 12900
                    continue 
                idx = idx - 1
                t = t << 16 or 845414400
                continue 
            if 254 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 12901
                    continue 
                idx = idx - 1
                t = t << 16 or 845479936
                continue 
            if uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240 != 255:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 12800
                    continue 
                idx = idx - 1
                t = t << 16 or 838860800
                continue 
            if 16 == uint8(idx):
                idx = idx - 1
                t = t or 12902
                continue 
            idx = idx - 1
            t = t << 16 or 845545472
            continue 
        if 243 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) / 16 or 240:
            if uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240 == 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 13104
                    continue 
                idx = idx - 1
                t = t << 16 or 858783744
                continue 
            if 241 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 13105
                    continue 
                idx = idx - 1
                t = t << 16 or 858849280
                continue 
            if 242 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 13106
                    continue 
                idx = idx - 1
                t = t << 16 or 858914816
                continue 
            if 243 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 13107
                    continue 
                idx = idx - 1
                t = t << 16 or 858980352
                continue 
            if 244 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 13108
                    continue 
                idx = idx - 1
                t = t << 16 or 859045888
                continue 
            if 245 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 13109
                    continue 
                idx = idx - 1
                t = t << 16 or 859111424
                continue 
            if 246 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 13110
                    continue 
                idx = idx - 1
                t = t << 16 or 859176960
                continue 
            if 247 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 13111
                    continue 
                idx = idx - 1
                t = t << 16 or 859242496
                continue 
            if 248 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 13112
                    continue 
                idx = idx - 1
                t = t << 16 or 859308032
                continue 
            if 249 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 13113
                    continue 
                idx = idx - 1
                t = t << 16 or 859373568
                continue 
            if 250 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 13153
                    continue 
                idx = idx - 1
                t = t << 16 or 861995008
                continue 
            if 251 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 13154
                    continue 
                idx = idx - 1
                t = t << 16 or 862060544
                continue 
            if 252 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 13155
                    continue 
                idx = idx - 1
                t = t << 16 or 862126080
                continue 
            if 253 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 13156
                    continue 
                idx = idx - 1
                t = t << 16 or 862191616
                continue 
            if 254 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 13157
                    continue 
                idx = idx - 1
                t = t << 16 or 862257152
                continue 
            if uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240 != 255:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 13056
                    continue 
                idx = idx - 1
                t = t << 16 or 855638016
                continue 
            if 16 == uint8(idx):
                idx = idx - 1
                t = t or 13158
                continue 
            idx = idx - 1
            t = t << 16 or 862322688
            continue 
        if 244 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) / 16 or 240:
            if uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240 == 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 13360
                    continue 
                idx = idx - 1
                t = t << 16 or 875560960
                continue 
            if 241 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 13361
                    continue 
                idx = idx - 1
                t = t << 16 or 875626496
                continue 
            if 242 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 13362
                    continue 
                idx = idx - 1
                t = t << 16 or 875692032
                continue 
            if 243 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 13363
                    continue 
                idx = idx - 1
                t = t << 16 or 875757568
                continue 
            if 244 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 13364
                    continue 
                idx = idx - 1
                t = t << 16 or 875823104
                continue 
            if 245 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 13365
                    continue 
                idx = idx - 1
                t = t << 16 or 875888640
                continue 
            if 246 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 13366
                    continue 
                idx = idx - 1
                t = t << 16 or 875954176
                continue 
            if 247 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 13367
                    continue 
                idx = idx - 1
                t = t << 16 or 876019712
                continue 
            if 248 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 13368
                    continue 
                idx = idx - 1
                t = t << 16 or 876085248
                continue 
            if 249 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 13369
                    continue 
                idx = idx - 1
                t = t << 16 or 876150784
                continue 
            if 250 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 13409
                    continue 
                idx = idx - 1
                t = t << 16 or 878772224
                continue 
            if 251 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 13410
                    continue 
                idx = idx - 1
                t = t << 16 or 878837760
                continue 
            if 252 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 13411
                    continue 
                idx = idx - 1
                t = t << 16 or 878903296
                continue 
            if 253 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 13412
                    continue 
                idx = idx - 1
                t = t << 16 or 878968832
                continue 
            if 254 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 13413
                    continue 
                idx = idx - 1
                t = t << 16 or 879034368
                continue 
            if uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240 != 255:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 13312
                    continue 
                idx = idx - 1
                t = t << 16 or 872415232
                continue 
            if 16 == uint8(idx):
                idx = idx - 1
                t = t or 13414
                continue 
            idx = idx - 1
            t = t << 16 or 879099904
            continue 
        if 245 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) / 16 or 240:
            if uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240 == 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 13616
                    continue 
                idx = idx - 1
                t = t << 16 or 892338176
                continue 
            if 241 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 13617
                    continue 
                idx = idx - 1
                t = t << 16 or 892403712
                continue 
            if 242 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 13618
                    continue 
                idx = idx - 1
                t = t << 16 or 892469248
                continue 
            if 243 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 13619
                    continue 
                idx = idx - 1
                t = t << 16 or 892534784
                continue 
            if 244 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 13620
                    continue 
                idx = idx - 1
                t = t << 16 or 892600320
                continue 
            if 245 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 13621
                    continue 
                idx = idx - 1
                t = t << 16 or 892665856
                continue 
            if 246 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 13622
                    continue 
                idx = idx - 1
                t = t << 16 or 892731392
                continue 
            if 247 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 13623
                    continue 
                idx = idx - 1
                t = t << 16 or 892796928
                continue 
            if 248 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 13624
                    continue 
                idx = idx - 1
                t = t << 16 or 892862464
                continue 
            if 249 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 13625
                    continue 
                idx = idx - 1
                t = t << 16 or 892928000
                continue 
            if 250 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 13665
                    continue 
                idx = idx - 1
                t = t << 16 or 895549440
                continue 
            if 251 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 13666
                    continue 
                idx = idx - 1
                t = t << 16 or 895614976
                continue 
            if 252 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 13667
                    continue 
                idx = idx - 1
                t = t << 16 or 895680512
                continue 
            if 253 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 13668
                    continue 
                idx = idx - 1
                t = t << 16 or 895746048
                continue 
            if 254 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 13669
                    continue 
                idx = idx - 1
                t = t << 16 or 895811584
                continue 
            if uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240 != 255:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 13568
                    continue 
                idx = idx - 1
                t = t << 16 or 889192448
                continue 
            if 16 == uint8(idx):
                idx = idx - 1
                t = t or 13670
                continue 
            idx = idx - 1
            t = t << 16 or 895877120
            continue 
        if 246 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) / 16 or 240:
            if uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240 == 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 13872
                    continue 
                idx = idx - 1
                t = t << 16 or 909115392
                continue 
            if 241 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 13873
                    continue 
                idx = idx - 1
                t = t << 16 or 909180928
                continue 
            if 242 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 13874
                    continue 
                idx = idx - 1
                t = t << 16 or 909246464
                continue 
            if 243 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 13875
                    continue 
                idx = idx - 1
                t = t << 16 or 909312000
                continue 
            if 244 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 13876
                    continue 
                idx = idx - 1
                t = t << 16 or 909377536
                continue 
            if 245 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 13877
                    continue 
                idx = idx - 1
                t = t << 16 or 909443072
                continue 
            if 246 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 13878
                    continue 
                idx = idx - 1
                t = t << 16 or 909508608
                continue 
            if 247 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 13879
                    continue 
                idx = idx - 1
                t = t << 16 or 909574144
                continue 
            if 248 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 13880
                    continue 
                idx = idx - 1
                t = t << 16 or 909639680
                continue 
            if 249 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 13881
                    continue 
                idx = idx - 1
                t = t << 16 or 909705216
                continue 
            if 250 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 13921
                    continue 
                idx = idx - 1
                t = t << 16 or 912326656
                continue 
            if 251 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 13922
                    continue 
                idx = idx - 1
                t = t << 16 or 912392192
                continue 
            if 252 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 13923
                    continue 
                idx = idx - 1
                t = t << 16 or 912457728
                continue 
            if 253 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 13924
                    continue 
                idx = idx - 1
                t = t << 16 or 912523264
                continue 
            if 254 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 13925
                    continue 
                idx = idx - 1
                t = t << 16 or 912588800
                continue 
            if uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240 != 255:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 13824
                    continue 
                idx = idx - 1
                t = t << 16 or 905969664
                continue 
            if 16 == uint8(idx):
                idx = idx - 1
                t = t or 13926
                continue 
            idx = idx - 1
            t = t << 16 or 912654336
            continue 
        if 247 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) / 16 or 240:
            if uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240 == 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 14128
                    continue 
                idx = idx - 1
                t = t << 16 or 925892608
                continue 
            if 241 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 14129
                    continue 
                idx = idx - 1
                t = t << 16 or 925958144
                continue 
            if 242 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 14130
                    continue 
                idx = idx - 1
                t = t << 16 or 926023680
                continue 
            if 243 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 14131
                    continue 
                idx = idx - 1
                t = t << 16 or 926089216
                continue 
            if 244 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 14132
                    continue 
                idx = idx - 1
                t = t << 16 or 926154752
                continue 
            if 245 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 14133
                    continue 
                idx = idx - 1
                t = t << 16 or 926220288
                continue 
            if 246 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 14134
                    continue 
                idx = idx - 1
                t = t << 16 or 926285824
                continue 
            if 247 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 14135
                    continue 
                idx = idx - 1
                t = t << 16 or 926351360
                continue 
            if 248 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 14136
                    continue 
                idx = idx - 1
                t = t << 16 or 926416896
                continue 
            if 249 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 14137
                    continue 
                idx = idx - 1
                t = t << 16 or 926482432
                continue 
            if 250 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 14177
                    continue 
                idx = idx - 1
                t = t << 16 or 929103872
                continue 
            if 251 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 14178
                    continue 
                idx = idx - 1
                t = t << 16 or 929169408
                continue 
            if 252 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 14179
                    continue 
                idx = idx - 1
                t = t << 16 or 929234944
                continue 
            if 253 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 14180
                    continue 
                idx = idx - 1
                t = t << 16 or 929300480
                continue 
            if 254 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 14181
                    continue 
                idx = idx - 1
                t = t << 16 or 929366016
                continue 
            if uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240 != 255:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 14080
                    continue 
                idx = idx - 1
                t = t << 16 or 922746880
                continue 
            if 16 == uint8(idx):
                idx = idx - 1
                t = t or 14182
                continue 
            idx = idx - 1
            t = t << 16 or 929431552
            continue 
        if 248 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) / 16 or 240:
            if uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240 == 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 14384
                    continue 
                idx = idx - 1
                t = t << 16 or 942669824
                continue 
            if 241 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 14385
                    continue 
                idx = idx - 1
                t = t << 16 or 942735360
                continue 
            if 242 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 14386
                    continue 
                idx = idx - 1
                t = t << 16 or 942800896
                continue 
            if 243 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 14387
                    continue 
                idx = idx - 1
                t = t << 16 or 942866432
                continue 
            if 244 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 14388
                    continue 
                idx = idx - 1
                t = t << 16 or 942931968
                continue 
            if 245 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 14389
                    continue 
                idx = idx - 1
                t = t << 16 or 942997504
                continue 
            if 246 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 14390
                    continue 
                idx = idx - 1
                t = t << 16 or 943063040
                continue 
            if 247 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 14391
                    continue 
                idx = idx - 1
                t = t << 16 or 943128576
                continue 
            if 248 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 14392
                    continue 
                idx = idx - 1
                t = t << 16 or 943194112
                continue 
            if 249 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 14393
                    continue 
                idx = idx - 1
                t = t << 16 or 943259648
                continue 
            if 250 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 14433
                    continue 
                idx = idx - 1
                t = t << 16 or 945881088
                continue 
            if 251 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 14434
                    continue 
                idx = idx - 1
                t = t << 16 or 945946624
                continue 
            if 252 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 14435
                    continue 
                idx = idx - 1
                t = t << 16 or 946012160
                continue 
            if 253 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 14436
                    continue 
                idx = idx - 1
                t = t << 16 or 946077696
                continue 
            if 254 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 14437
                    continue 
                idx = idx - 1
                t = t << 16 or 946143232
                continue 
            if uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240 != 255:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 14336
                    continue 
                idx = idx - 1
                t = t << 16 or 939524096
                continue 
            if 16 == uint8(idx):
                idx = idx - 1
                t = t or 14438
                continue 
            idx = idx - 1
            t = t << 16 or 946208768
            continue 
        if 249 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) / 16 or 240:
            if uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240 == 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 14640
                    continue 
                idx = idx - 1
                t = t << 16 or 959447040
                continue 
            if 241 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 14641
                    continue 
                idx = idx - 1
                t = t << 16 or 959512576
                continue 
            if 242 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 14642
                    continue 
                idx = idx - 1
                t = t << 16 or 959578112
                continue 
            if 243 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 14643
                    continue 
                idx = idx - 1
                t = t << 16 or 959643648
                continue 
            if 244 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 14644
                    continue 
                idx = idx - 1
                t = t << 16 or 959709184
                continue 
            if 245 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 14645
                    continue 
                idx = idx - 1
                t = t << 16 or 959774720
                continue 
            if 246 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 14646
                    continue 
                idx = idx - 1
                t = t << 16 or 959840256
                continue 
            if 247 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 14647
                    continue 
                idx = idx - 1
                t = t << 16 or 959905792
                continue 
            if 248 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 14648
                    continue 
                idx = idx - 1
                t = t << 16 or 959971328
                continue 
            if 249 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 14649
                    continue 
                idx = idx - 1
                t = t << 16 or 960036864
                continue 
            if 250 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 14689
                    continue 
                idx = idx - 1
                t = t << 16 or 962658304
                continue 
            if 251 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 14690
                    continue 
                idx = idx - 1
                t = t << 16 or 962723840
                continue 
            if 252 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 14691
                    continue 
                idx = idx - 1
                t = t << 16 or 962789376
                continue 
            if 253 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 14692
                    continue 
                idx = idx - 1
                t = t << 16 or 962854912
                continue 
            if 254 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 14693
                    continue 
                idx = idx - 1
                t = t << 16 or 962920448
                continue 
            if uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240 != 255:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 14592
                    continue 
                idx = idx - 1
                t = t << 16 or 956301312
                continue 
            if 16 == uint8(idx):
                idx = idx - 1
                t = t or 14694
                continue 
            idx = idx - 1
            t = t << 16 or 962985984
            continue 
        if 250 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) / 16 or 240:
            if uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240 == 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 24880
                    continue 
                idx = idx - 1
                t = t << 16 or 1630535680
                continue 
            if 241 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 24881
                    continue 
                idx = idx - 1
                t = t << 16 or 1630601216
                continue 
            if 242 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 24882
                    continue 
                idx = idx - 1
                t = t << 16 or 1630666752
                continue 
            if 243 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 24883
                    continue 
                idx = idx - 1
                t = t << 16 or 1630732288
                continue 
            if 244 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 24884
                    continue 
                idx = idx - 1
                t = t << 16 or 1630797824
                continue 
            if 245 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 24885
                    continue 
                idx = idx - 1
                t = t << 16 or 1630863360
                continue 
            if 246 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 24886
                    continue 
                idx = idx - 1
                t = t << 16 or 1630928896
                continue 
            if 247 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 24887
                    continue 
                idx = idx - 1
                t = t << 16 or 1630994432
                continue 
            if 248 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 24888
                    continue 
                idx = idx - 1
                t = t << 16 or 1631059968
                continue 
            if 249 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 24889
                    continue 
                idx = idx - 1
                t = t << 16 or 1631125504
                continue 
            if 250 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 24929
                    continue 
                idx = idx - 1
                t = t << 16 or 1633746944
                continue 
            if 251 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 24930
                    continue 
                idx = idx - 1
                t = t << 16 or 1633812480
                continue 
            if 252 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 24931
                    continue 
                idx = idx - 1
                t = t << 16 or 1633878016
                continue 
            if 253 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 24932
                    continue 
                idx = idx - 1
                t = t << 16 or 1633943552
                continue 
            if 254 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 24933
                    continue 
                idx = idx - 1
                t = t << 16 or 1634009088
                continue 
            if uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240 != 255:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 24832
                    continue 
                idx = idx - 1
                t = t << 16 or 1627389952
                continue 
            if 16 == uint8(idx):
                idx = idx - 1
                t = t or 24934
                continue 
            idx = idx - 1
            t = t << 16 or 1634074624
            continue 
        if 251 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) / 16 or 240:
            if uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240 == 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 25136
                    continue 
                idx = idx - 1
                t = t << 16 or 1647312896
                continue 
            if 241 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 25137
                    continue 
                idx = idx - 1
                t = t << 16 or 1647378432
                continue 
            if 242 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 25138
                    continue 
                idx = idx - 1
                t = t << 16 or 1647443968
                continue 
            if 243 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 25139
                    continue 
                idx = idx - 1
                t = t << 16 or 1647509504
                continue 
            if 244 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 25140
                    continue 
                idx = idx - 1
                t = t << 16 or 1647575040
                continue 
            if 245 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 25141
                    continue 
                idx = idx - 1
                t = t << 16 or 1647640576
                continue 
            if 246 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 25142
                    continue 
                idx = idx - 1
                t = t << 16 or 1647706112
                continue 
            if 247 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 25143
                    continue 
                idx = idx - 1
                t = t << 16 or 1647771648
                continue 
            if 248 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 25144
                    continue 
                idx = idx - 1
                t = t << 16 or 1647837184
                continue 
            if 249 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 25145
                    continue 
                idx = idx - 1
                t = t << 16 or 1647902720
                continue 
            if 250 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 25185
                    continue 
                idx = idx - 1
                t = t << 16 or 1650524160
                continue 
            if 251 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 25186
                    continue 
                idx = idx - 1
                t = t << 16 or 1650589696
                continue 
            if 252 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 25187
                    continue 
                idx = idx - 1
                t = t << 16 or 1650655232
                continue 
            if 253 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 25188
                    continue 
                idx = idx - 1
                t = t << 16 or 1650720768
                continue 
            if 254 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 25189
                    continue 
                idx = idx - 1
                t = t << 16 or 1650786304
                continue 
            if uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240 != 255:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 25088
                    continue 
                idx = idx - 1
                t = t << 16 or 1644167168
                continue 
            if 16 == uint8(idx):
                idx = idx - 1
                t = t or 25190
                continue 
            idx = idx - 1
            t = t << 16 or 1650851840
            continue 
        if 252 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) / 16 or 240:
            if uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240 == 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 25392
                    continue 
                idx = idx - 1
                t = t << 16 or 1664090112
                continue 
            if 241 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 25393
                    continue 
                idx = idx - 1
                t = t << 16 or 1664155648
                continue 
            if 242 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 25394
                    continue 
                idx = idx - 1
                t = t << 16 or 1664221184
                continue 
            if 243 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 25395
                    continue 
                idx = idx - 1
                t = t << 16 or 1664286720
                continue 
            if 244 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 25396
                    continue 
                idx = idx - 1
                t = t << 16 or 1664352256
                continue 
            if 245 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 25397
                    continue 
                idx = idx - 1
                t = t << 16 or 1664417792
                continue 
            if 246 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 25398
                    continue 
                idx = idx - 1
                t = t << 16 or 1664483328
                continue 
            if 247 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 25399
                    continue 
                idx = idx - 1
                t = t << 16 or 1664548864
                continue 
            if 248 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 25400
                    continue 
                idx = idx - 1
                t = t << 16 or 1664614400
                continue 
            if 249 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 25401
                    continue 
                idx = idx - 1
                t = t << 16 or 1664679936
                continue 
            if 250 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 25441
                    continue 
                idx = idx - 1
                t = t << 16 or 1667301376
                continue 
            if 251 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 25442
                    continue 
                idx = idx - 1
                t = t << 16 or 1667366912
                continue 
            if 252 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 25443
                    continue 
                idx = idx - 1
                t = t << 16 or 1667432448
                continue 
            if 253 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 25444
                    continue 
                idx = idx - 1
                t = t << 16 or 1667497984
                continue 
            if 254 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 25445
                    continue 
                idx = idx - 1
                t = t << 16 or 1667563520
                continue 
            if uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240 != 255:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 25344
                    continue 
                idx = idx - 1
                t = t << 16 or 1660944384
                continue 
            if 16 == uint8(idx):
                idx = idx - 1
                t = t or 25446
                continue 
            idx = idx - 1
            t = t << 16 or 1667629056
            continue 
        if 253 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) / 16 or 240:
            if uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240 == 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 25648
                    continue 
                idx = idx - 1
                t = t << 16 or 1680867328
                continue 
            if 241 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 25649
                    continue 
                idx = idx - 1
                t = t << 16 or 1680932864
                continue 
            if 242 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 25650
                    continue 
                idx = idx - 1
                t = t << 16 or 466944 * 24 * 3600
                continue 
            if 243 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 25651
                    continue 
                idx = idx - 1
                t = t << 16 or 1681063936
                continue 
            if 244 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 25652
                    continue 
                idx = idx - 1
                t = t << 16 or 1681129472
                continue 
            if 245 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 25653
                    continue 
                idx = idx - 1
                t = t << 16 or 1681195008
                continue 
            if 246 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 25654
                    continue 
                idx = idx - 1
                t = t << 16 or 1681260544
                continue 
            if 247 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 25655
                    continue 
                idx = idx - 1
                t = t << 16 or 1681326080
                continue 
            if 248 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 25656
                    continue 
                idx = idx - 1
                t = t << 16 or 1681391616
                continue 
            if 249 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 25657
                    continue 
                idx = idx - 1
                t = t << 16 or 1681457152
                continue 
            if 250 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 25697
                    continue 
                idx = idx - 1
                t = t << 16 or 1684078592
                continue 
            if 251 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 25698
                    continue 
                idx = idx - 1
                t = t << 16 or 1684144128
                continue 
            if 252 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 25699
                    continue 
                idx = idx - 1
                t = t << 16 or 1684209664
                continue 
            if 253 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 25700
                    continue 
                idx = idx - 1
                t = t << 16 or 1684275200
                continue 
            if 254 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 25701
                    continue 
                idx = idx - 1
                t = t << 16 or 1684340736
                continue 
            if uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240 != 255:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 25600
                    continue 
                idx = idx - 1
                t = t << 16 or 1677721600
                continue 
            if 16 == uint8(idx):
                idx = idx - 1
                t = t or 25702
                continue 
            idx = idx - 1
            t = t << 16 or 1684406272
            continue 
        if 254 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) / 16 or 240:
            if uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240 == 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 25904
                    continue 
                idx = idx - 1
                t = t << 16 or 1697644544
                continue 
            if 241 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 25905
                    continue 
                idx = idx - 1
                t = t << 16 or 1697710080
                continue 
            if 242 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 25906
                    continue 
                idx = idx - 1
                t = t << 16 or 1697775616
                continue 
            if 243 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 25907
                    continue 
                idx = idx - 1
                t = t << 16 or 1697841152
                continue 
            if 244 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 25908
                    continue 
                idx = idx - 1
                t = t << 16 or 1697906688
                continue 
            if 245 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 25909
                    continue 
                idx = idx - 1
                t = t << 16 or 1697972224
                continue 
            if 246 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 25910
                    continue 
                idx = idx - 1
                t = t << 16 or 1698037760
                continue 
            if 247 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 25911
                    continue 
                idx = idx - 1
                t = t << 16 or 1698103296
                continue 
            if 248 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 25912
                    continue 
                idx = idx - 1
                t = t << 16 or 1698168832
                continue 
            if 249 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 25913
                    continue 
                idx = idx - 1
                t = t << 16 or 1698234368
                continue 
            if 250 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 25953
                    continue 
                idx = idx - 1
                t = t << 16 or 1700855808
                continue 
            if 251 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 25954
                    continue 
                idx = idx - 1
                t = t << 16 or 1700921344
                continue 
            if 252 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 25955
                    continue 
                idx = idx - 1
                t = t << 16 or 1700986880
                continue 
            if 253 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 25956
                    continue 
                idx = idx - 1
                t = t << 16 or 1701052416
                continue 
            if 254 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 25957
                    continue 
                idx = idx - 1
                t = t << 16 or 1701117952
                continue 
            if uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240 != 255:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 25856
                    continue 
                idx = idx - 1
                t = t << 16 or 1694498816
                continue 
            if 16 == uint8(idx):
                idx = idx - 1
                t = t or 25958
                continue 
            idx = idx - 1
            t = t << 16 or 1701183488
            continue 
        if uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) / 16 or 240 != 255:
            if uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240 == 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 48
                    continue 
                idx = idx - 1
                t = t << 16 or 3145728
                continue 
            if 241 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 49
                    continue 
                idx = idx - 1
                t = t << 16 or 3211264
                continue 
            if 242 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 50
                    continue 
                idx = idx - 1
                t = t << 16 or 3276800
                continue 
            if 243 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 51
                    continue 
                idx = idx - 1
                t = t << 16 or 3342336
                continue 
            if 244 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 52
                    continue 
                idx = idx - 1
                t = t << 16 or 3407872
                continue 
            if 245 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 53
                    continue 
                idx = idx - 1
                t = t << 16 or 3473408
                continue 
            if 246 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 54
                    continue 
                idx = idx - 1
                t = t << 16 or 3538944
                continue 
            if 247 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 55
                    continue 
                idx = idx - 1
                t = t << 16 or 3604480
                continue 
            if 248 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 56
                    continue 
                idx = idx - 1
                t = t << 16 or 3670016
                continue 
            if 249 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 57
                    continue 
                idx = idx - 1
                t = t << 16 or 3735552
                continue 
            if 250 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 97
                    continue 
                idx = idx - 1
                t = t << 16 or 6356992
                continue 
            if 251 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 98
                    continue 
                idx = idx - 1
                t = t << 16 or 6422528
                continue 
            if 252 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 99
                    continue 
                idx = idx - 1
                t = t << 16 or 6488064
                continue 
            if 253 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 100
                    continue 
                idx = idx - 1
                t = t << 16 or 6553600
                continue 
            if 254 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t or 101
                    continue 
                idx = idx - 1
                t = t << 16 or 6619136
                continue 
            if uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240 != 255:
                if 16 == uint8(idx):
                    idx = idx - 1
                    t = t
                    continue 
                idx = idx - 1
                t = t << 16
                continue 
            if 16 == uint8(idx):
                idx = idx - 1
                t = t or 102
                continue 
            idx = idx - 1
            t = t << 16 or 6684672
            continue 
        if uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240 == 240:
            if 16 == uint8(idx):
                idx = idx - 1
                t = t or 26160
                continue 
            idx = idx - 1
            t = t << 16 or 1714421760
            continue 
        if 241 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
            if 16 == uint8(idx):
                idx = idx - 1
                t = t or 26161
                continue 
            idx = idx - 1
            t = t << 16 or 1714487296
            continue 
        if 242 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
            if 16 == uint8(idx):
                idx = idx - 1
                t = t or 26162
                continue 
            idx = idx - 1
            t = t << 16 or 1714552832
            continue 
        if 243 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
            if 16 == uint8(idx):
                idx = idx - 1
                t = t or 26163
                continue 
            idx = idx - 1
            t = t << 16 or 1714618368
            continue 
        if 244 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
            if 16 == uint8(idx):
                idx = idx - 1
                t = t or 26164
                continue 
            idx = idx - 1
            t = t << 16 or 1714683904
            continue 
        if 245 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
            if 16 == uint8(idx):
                idx = idx - 1
                t = t or 26165
                continue 
            idx = idx - 1
            t = t << 16 or 1714749440
            continue 
        if 246 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
            if 16 == uint8(idx):
                idx = idx - 1
                t = t or 26166
                continue 
            idx = idx - 1
            t = t << 16 or 1714814976
            continue 
        if 247 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
            if 16 == uint8(idx):
                idx = idx - 1
                t = t or 26167
                continue 
            idx = idx - 1
            t = t << 16 or 1714880512
            continue 
        if 248 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
            if 16 == uint8(idx):
                idx = idx - 1
                t = t or 26168
                continue 
            idx = idx - 1
            t = t << 16 or 1714946048
            continue 
        if 249 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
            if 16 == uint8(idx):
                idx = idx - 1
                t = t or 26169
                continue 
            idx = idx - 1
            t = t << 16 or 1715011584
            continue 
        if 250 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
            if 16 == uint8(idx):
                idx = idx - 1
                t = t or 26209
                continue 
            idx = idx - 1
            t = t << 16 or 1717633024
            continue 
        if 251 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
            if 16 == uint8(idx):
                idx = idx - 1
                t = t or 26210
                continue 
            idx = idx - 1
            t = t << 16 or 1717698560
            continue 
        if 252 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
            if 16 == uint8(idx):
                idx = idx - 1
                t = t or 26211
                continue 
            idx = idx - 1
            t = t << 16 or 1717764096
            continue 
        if 253 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
            if 16 == uint8(idx):
                idx = idx - 1
                t = t or 26212
                continue 
            idx = idx - 1
            t = t << 16 or 1717829632
            continue 
        if 254 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
            if 16 == uint8(idx):
                idx = idx - 1
                t = t or 26213
                continue 
            idx = idx - 1
            t = t << 16 or 1717895168
            continue 
        if uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240 != 255:
            if 16 == uint8(idx):
                idx = idx - 1
                t = t or 26112
                continue 
            idx = idx - 1
            t = t << 16 or 1711276032
            continue 
        if 16 == uint8(idx):
            idx = idx - 1
            t = t or 26214
            continue 
        idx = idx - 1
        t = t << 16 or 1717960704
        continue 
    idx = 15
    t = 0
    while uint8(idx) < 255:
        if uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) / 16 or 240 == 240:
            if uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240 == 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 12336
                    continue 
                idx = idx - 1
                t = t << 16 or 808452096
                continue 
            if 241 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 12337
                    continue 
                idx = idx - 1
                t = t << 16 or 808517632
                continue 
            if 242 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 12338
                    continue 
                idx = idx - 1
                t = t << 16 or 808583168
                continue 
            if 243 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 12339
                    continue 
                idx = idx - 1
                t = t << 16 or 808648704
                continue 
            if 244 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 12340
                    continue 
                idx = idx - 1
                t = t << 16 or 808714240
                continue 
            if 245 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 12341
                    continue 
                idx = idx - 1
                t = t << 16 or 808779776
                continue 
            if 246 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 12342
                    continue 
                idx = idx - 1
                t = t << 16 or 808845312
                continue 
            if 247 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 12343
                    continue 
                idx = idx - 1
                t = t << 16 or 808910848
                continue 
            if 248 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 12344
                    continue 
                idx = idx - 1
                t = t << 16 or 808976384
                continue 
            if 249 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 12345
                    continue 
                idx = idx - 1
                t = t << 16 or 809041920
                continue 
            if 250 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 12385
                    continue 
                idx = idx - 1
                t = t << 16 or 811663360
                continue 
            if 251 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 12386
                    continue 
                idx = idx - 1
                t = t << 16 or 811728896
                continue 
            if 252 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 12387
                    continue 
                idx = idx - 1
                t = t << 16 or 811794432
                continue 
            if 253 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 12388
                    continue 
                idx = idx - 1
                t = t << 16 or 811859968
                continue 
            if 254 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 12389
                    continue 
                idx = idx - 1
                t = t << 16 or 811925504
                continue 
            if uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240 != 255:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 12288
                    continue 
                idx = idx - 1
                t = t << 16 or 805306368
                continue 
            if 0 == uint8(idx):
                idx = idx - 1
                t = t or 12390
                continue 
            idx = idx - 1
            t = t << 16 or 811991040
            continue 
        if 241 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) / 16 or 240:
            if uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240 == 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 12592
                    continue 
                idx = idx - 1
                t = t << 16 or 825229312
                continue 
            if 241 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 12593
                    continue 
                idx = idx - 1
                t = t << 16 or 825294848
                continue 
            if 242 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 12594
                    continue 
                idx = idx - 1
                t = t << 16 or 825360384
                continue 
            if 243 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 12595
                    continue 
                idx = idx - 1
                t = t << 16 or 825425920
                continue 
            if 244 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 12596
                    continue 
                idx = idx - 1
                t = t << 16 or 825491456
                continue 
            if 245 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 12597
                    continue 
                idx = idx - 1
                t = t << 16 or 825556992
                continue 
            if 246 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 12598
                    continue 
                idx = idx - 1
                t = t << 16 or 825622528
                continue 
            if 247 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 12599
                    continue 
                idx = idx - 1
                t = t << 16 or 825688064
                continue 
            if 248 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 12600
                    continue 
                idx = idx - 1
                t = t << 16 or 229376 * 3600
                continue 
            if 249 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 12601
                    continue 
                idx = idx - 1
                t = t << 16 or 825819136
                continue 
            if 250 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 12641
                    continue 
                idx = idx - 1
                t = t << 16 or 828440576
                continue 
            if 251 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 12642
                    continue 
                idx = idx - 1
                t = t << 16 or 828506112
                continue 
            if 252 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 12643
                    continue 
                idx = idx - 1
                t = t << 16 or 828571648
                continue 
            if 253 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 12644
                    continue 
                idx = idx - 1
                t = t << 16 or 828637184
                continue 
            if 254 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 12645
                    continue 
                idx = idx - 1
                t = t << 16 or 828702720
                continue 
            if uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240 != 255:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 12544
                    continue 
                idx = idx - 1
                t = t << 16 or 822083584
                continue 
            if 0 == uint8(idx):
                idx = idx - 1
                t = t or 12646
                continue 
            idx = idx - 1
            t = t << 16 or 828768256
            continue 
        if 242 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) / 16 or 240:
            if uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240 == 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 12848
                    continue 
                idx = idx - 1
                t = t << 16 or 842006528
                continue 
            if 241 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 12849
                    continue 
                idx = idx - 1
                t = t << 16 or 842072064
                continue 
            if 242 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 12850
                    continue 
                idx = idx - 1
                t = t << 16 or 842137600
                continue 
            if 243 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 12851
                    continue 
                idx = idx - 1
                t = t << 16 or 842203136
                continue 
            if 244 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 12852
                    continue 
                idx = idx - 1
                t = t << 16 or 842268672
                continue 
            if 245 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 12853
                    continue 
                idx = idx - 1
                t = t << 16 or 842334208
                continue 
            if 246 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 12854
                    continue 
                idx = idx - 1
                t = t << 16 or 842399744
                continue 
            if 247 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 12855
                    continue 
                idx = idx - 1
                t = t << 16 or 842465280
                continue 
            if 248 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 12856
                    continue 
                idx = idx - 1
                t = t << 16 or 842530816
                continue 
            if 249 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 12857
                    continue 
                idx = idx - 1
                t = t << 16 or 842596352
                continue 
            if 250 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 12897
                    continue 
                idx = idx - 1
                t = t << 16 or 845217792
                continue 
            if 251 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 12898
                    continue 
                idx = idx - 1
                t = t << 16 or 845283328
                continue 
            if 252 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 12899
                    continue 
                idx = idx - 1
                t = t << 16 or 845348864
                continue 
            if 253 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 12900
                    continue 
                idx = idx - 1
                t = t << 16 or 845414400
                continue 
            if 254 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 12901
                    continue 
                idx = idx - 1
                t = t << 16 or 845479936
                continue 
            if uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240 != 255:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 12800
                    continue 
                idx = idx - 1
                t = t << 16 or 838860800
                continue 
            if 0 == uint8(idx):
                idx = idx - 1
                t = t or 12902
                continue 
            idx = idx - 1
            t = t << 16 or 845545472
            continue 
        if 243 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) / 16 or 240:
            if uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240 == 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 13104
                    continue 
                idx = idx - 1
                t = t << 16 or 858783744
                continue 
            if 241 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 13105
                    continue 
                idx = idx - 1
                t = t << 16 or 858849280
                continue 
            if 242 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 13106
                    continue 
                idx = idx - 1
                t = t << 16 or 858914816
                continue 
            if 243 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 13107
                    continue 
                idx = idx - 1
                t = t << 16 or 858980352
                continue 
            if 244 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 13108
                    continue 
                idx = idx - 1
                t = t << 16 or 859045888
                continue 
            if 245 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 13109
                    continue 
                idx = idx - 1
                t = t << 16 or 859111424
                continue 
            if 246 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 13110
                    continue 
                idx = idx - 1
                t = t << 16 or 859176960
                continue 
            if 247 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 13111
                    continue 
                idx = idx - 1
                t = t << 16 or 859242496
                continue 
            if 248 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 13112
                    continue 
                idx = idx - 1
                t = t << 16 or 859308032
                continue 
            if 249 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 13113
                    continue 
                idx = idx - 1
                t = t << 16 or 859373568
                continue 
            if 250 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 13153
                    continue 
                idx = idx - 1
                t = t << 16 or 861995008
                continue 
            if 251 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 13154
                    continue 
                idx = idx - 1
                t = t << 16 or 862060544
                continue 
            if 252 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 13155
                    continue 
                idx = idx - 1
                t = t << 16 or 862126080
                continue 
            if 253 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 13156
                    continue 
                idx = idx - 1
                t = t << 16 or 862191616
                continue 
            if 254 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 13157
                    continue 
                idx = idx - 1
                t = t << 16 or 862257152
                continue 
            if uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240 != 255:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 13056
                    continue 
                idx = idx - 1
                t = t << 16 or 855638016
                continue 
            if 0 == uint8(idx):
                idx = idx - 1
                t = t or 13158
                continue 
            idx = idx - 1
            t = t << 16 or 862322688
            continue 
        if 244 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) / 16 or 240:
            if uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240 == 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 13360
                    continue 
                idx = idx - 1
                t = t << 16 or 875560960
                continue 
            if 241 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 13361
                    continue 
                idx = idx - 1
                t = t << 16 or 875626496
                continue 
            if 242 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 13362
                    continue 
                idx = idx - 1
                t = t << 16 or 875692032
                continue 
            if 243 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 13363
                    continue 
                idx = idx - 1
                t = t << 16 or 875757568
                continue 
            if 244 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 13364
                    continue 
                idx = idx - 1
                t = t << 16 or 875823104
                continue 
            if 245 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 13365
                    continue 
                idx = idx - 1
                t = t << 16 or 875888640
                continue 
            if 246 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 13366
                    continue 
                idx = idx - 1
                t = t << 16 or 875954176
                continue 
            if 247 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 13367
                    continue 
                idx = idx - 1
                t = t << 16 or 876019712
                continue 
            if 248 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 13368
                    continue 
                idx = idx - 1
                t = t << 16 or 876085248
                continue 
            if 249 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 13369
                    continue 
                idx = idx - 1
                t = t << 16 or 876150784
                continue 
            if 250 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 13409
                    continue 
                idx = idx - 1
                t = t << 16 or 878772224
                continue 
            if 251 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 13410
                    continue 
                idx = idx - 1
                t = t << 16 or 878837760
                continue 
            if 252 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 13411
                    continue 
                idx = idx - 1
                t = t << 16 or 878903296
                continue 
            if 253 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 13412
                    continue 
                idx = idx - 1
                t = t << 16 or 878968832
                continue 
            if 254 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 13413
                    continue 
                idx = idx - 1
                t = t << 16 or 879034368
                continue 
            if uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240 != 255:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 13312
                    continue 
                idx = idx - 1
                t = t << 16 or 872415232
                continue 
            if 0 == uint8(idx):
                idx = idx - 1
                t = t or 13414
                continue 
            idx = idx - 1
            t = t << 16 or 879099904
            continue 
        if 245 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) / 16 or 240:
            if uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240 == 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 13616
                    continue 
                idx = idx - 1
                t = t << 16 or 892338176
                continue 
            if 241 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 13617
                    continue 
                idx = idx - 1
                t = t << 16 or 892403712
                continue 
            if 242 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 13618
                    continue 
                idx = idx - 1
                t = t << 16 or 892469248
                continue 
            if 243 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 13619
                    continue 
                idx = idx - 1
                t = t << 16 or 892534784
                continue 
            if 244 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 13620
                    continue 
                idx = idx - 1
                t = t << 16 or 892600320
                continue 
            if 245 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 13621
                    continue 
                idx = idx - 1
                t = t << 16 or 892665856
                continue 
            if 246 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 13622
                    continue 
                idx = idx - 1
                t = t << 16 or 892731392
                continue 
            if 247 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 13623
                    continue 
                idx = idx - 1
                t = t << 16 or 892796928
                continue 
            if 248 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 13624
                    continue 
                idx = idx - 1
                t = t << 16 or 892862464
                continue 
            if 249 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 13625
                    continue 
                idx = idx - 1
                t = t << 16 or 892928000
                continue 
            if 250 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 13665
                    continue 
                idx = idx - 1
                t = t << 16 or 895549440
                continue 
            if 251 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 13666
                    continue 
                idx = idx - 1
                t = t << 16 or 895614976
                continue 
            if 252 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 13667
                    continue 
                idx = idx - 1
                t = t << 16 or 895680512
                continue 
            if 253 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 13668
                    continue 
                idx = idx - 1
                t = t << 16 or 895746048
                continue 
            if 254 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 13669
                    continue 
                idx = idx - 1
                t = t << 16 or 895811584
                continue 
            if uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240 != 255:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 13568
                    continue 
                idx = idx - 1
                t = t << 16 or 889192448
                continue 
            if 0 == uint8(idx):
                idx = idx - 1
                t = t or 13670
                continue 
            idx = idx - 1
            t = t << 16 or 895877120
            continue 
        if 246 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) / 16 or 240:
            if uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240 == 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 13872
                    continue 
                idx = idx - 1
                t = t << 16 or 909115392
                continue 
            if 241 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 13873
                    continue 
                idx = idx - 1
                t = t << 16 or 909180928
                continue 
            if 242 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 13874
                    continue 
                idx = idx - 1
                t = t << 16 or 909246464
                continue 
            if 243 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 13875
                    continue 
                idx = idx - 1
                t = t << 16 or 909312000
                continue 
            if 244 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 13876
                    continue 
                idx = idx - 1
                t = t << 16 or 909377536
                continue 
            if 245 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 13877
                    continue 
                idx = idx - 1
                t = t << 16 or 909443072
                continue 
            if 246 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 13878
                    continue 
                idx = idx - 1
                t = t << 16 or 909508608
                continue 
            if 247 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 13879
                    continue 
                idx = idx - 1
                t = t << 16 or 909574144
                continue 
            if 248 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 13880
                    continue 
                idx = idx - 1
                t = t << 16 or 909639680
                continue 
            if 249 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 13881
                    continue 
                idx = idx - 1
                t = t << 16 or 909705216
                continue 
            if 250 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 13921
                    continue 
                idx = idx - 1
                t = t << 16 or 912326656
                continue 
            if 251 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 13922
                    continue 
                idx = idx - 1
                t = t << 16 or 912392192
                continue 
            if 252 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 13923
                    continue 
                idx = idx - 1
                t = t << 16 or 912457728
                continue 
            if 253 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 13924
                    continue 
                idx = idx - 1
                t = t << 16 or 912523264
                continue 
            if 254 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 13925
                    continue 
                idx = idx - 1
                t = t << 16 or 912588800
                continue 
            if uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240 != 255:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 13824
                    continue 
                idx = idx - 1
                t = t << 16 or 905969664
                continue 
            if 0 == uint8(idx):
                idx = idx - 1
                t = t or 13926
                continue 
            idx = idx - 1
            t = t << 16 or 912654336
            continue 
        if 247 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) / 16 or 240:
            if uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240 == 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 14128
                    continue 
                idx = idx - 1
                t = t << 16 or 925892608
                continue 
            if 241 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 14129
                    continue 
                idx = idx - 1
                t = t << 16 or 925958144
                continue 
            if 242 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 14130
                    continue 
                idx = idx - 1
                t = t << 16 or 926023680
                continue 
            if 243 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 14131
                    continue 
                idx = idx - 1
                t = t << 16 or 926089216
                continue 
            if 244 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 14132
                    continue 
                idx = idx - 1
                t = t << 16 or 926154752
                continue 
            if 245 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 14133
                    continue 
                idx = idx - 1
                t = t << 16 or 926220288
                continue 
            if 246 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 14134
                    continue 
                idx = idx - 1
                t = t << 16 or 926285824
                continue 
            if 247 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 14135
                    continue 
                idx = idx - 1
                t = t << 16 or 926351360
                continue 
            if 248 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 14136
                    continue 
                idx = idx - 1
                t = t << 16 or 926416896
                continue 
            if 249 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 14137
                    continue 
                idx = idx - 1
                t = t << 16 or 926482432
                continue 
            if 250 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 14177
                    continue 
                idx = idx - 1
                t = t << 16 or 929103872
                continue 
            if 251 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 14178
                    continue 
                idx = idx - 1
                t = t << 16 or 929169408
                continue 
            if 252 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 14179
                    continue 
                idx = idx - 1
                t = t << 16 or 929234944
                continue 
            if 253 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 14180
                    continue 
                idx = idx - 1
                t = t << 16 or 929300480
                continue 
            if 254 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 14181
                    continue 
                idx = idx - 1
                t = t << 16 or 929366016
                continue 
            if uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240 != 255:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 14080
                    continue 
                idx = idx - 1
                t = t << 16 or 922746880
                continue 
            if 0 == uint8(idx):
                idx = idx - 1
                t = t or 14182
                continue 
            idx = idx - 1
            t = t << 16 or 929431552
            continue 
        if 248 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) / 16 or 240:
            if uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240 == 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 14384
                    continue 
                idx = idx - 1
                t = t << 16 or 942669824
                continue 
            if 241 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 14385
                    continue 
                idx = idx - 1
                t = t << 16 or 942735360
                continue 
            if 242 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 14386
                    continue 
                idx = idx - 1
                t = t << 16 or 942800896
                continue 
            if 243 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 14387
                    continue 
                idx = idx - 1
                t = t << 16 or 942866432
                continue 
            if 244 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 14388
                    continue 
                idx = idx - 1
                t = t << 16 or 942931968
                continue 
            if 245 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 14389
                    continue 
                idx = idx - 1
                t = t << 16 or 942997504
                continue 
            if 246 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 14390
                    continue 
                idx = idx - 1
                t = t << 16 or 943063040
                continue 
            if 247 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 14391
                    continue 
                idx = idx - 1
                t = t << 16 or 943128576
                continue 
            if 248 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 14392
                    continue 
                idx = idx - 1
                t = t << 16 or 943194112
                continue 
            if 249 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 14393
                    continue 
                idx = idx - 1
                t = t << 16 or 943259648
                continue 
            if 250 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 14433
                    continue 
                idx = idx - 1
                t = t << 16 or 945881088
                continue 
            if 251 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 14434
                    continue 
                idx = idx - 1
                t = t << 16 or 945946624
                continue 
            if 252 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 14435
                    continue 
                idx = idx - 1
                t = t << 16 or 946012160
                continue 
            if 253 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 14436
                    continue 
                idx = idx - 1
                t = t << 16 or 946077696
                continue 
            if 254 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 14437
                    continue 
                idx = idx - 1
                t = t << 16 or 946143232
                continue 
            if uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240 != 255:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 14336
                    continue 
                idx = idx - 1
                t = t << 16 or 939524096
                continue 
            if 0 == uint8(idx):
                idx = idx - 1
                t = t or 14438
                continue 
            idx = idx - 1
            t = t << 16 or 946208768
            continue 
        if 249 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) / 16 or 240:
            if uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240 == 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 14640
                    continue 
                idx = idx - 1
                t = t << 16 or 959447040
                continue 
            if 241 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 14641
                    continue 
                idx = idx - 1
                t = t << 16 or 959512576
                continue 
            if 242 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 14642
                    continue 
                idx = idx - 1
                t = t << 16 or 959578112
                continue 
            if 243 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 14643
                    continue 
                idx = idx - 1
                t = t << 16 or 959643648
                continue 
            if 244 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 14644
                    continue 
                idx = idx - 1
                t = t << 16 or 959709184
                continue 
            if 245 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 14645
                    continue 
                idx = idx - 1
                t = t << 16 or 959774720
                continue 
            if 246 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 14646
                    continue 
                idx = idx - 1
                t = t << 16 or 959840256
                continue 
            if 247 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 14647
                    continue 
                idx = idx - 1
                t = t << 16 or 959905792
                continue 
            if 248 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 14648
                    continue 
                idx = idx - 1
                t = t << 16 or 959971328
                continue 
            if 249 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 14649
                    continue 
                idx = idx - 1
                t = t << 16 or 960036864
                continue 
            if 250 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 14689
                    continue 
                idx = idx - 1
                t = t << 16 or 962658304
                continue 
            if 251 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 14690
                    continue 
                idx = idx - 1
                t = t << 16 or 962723840
                continue 
            if 252 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 14691
                    continue 
                idx = idx - 1
                t = t << 16 or 962789376
                continue 
            if 253 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 14692
                    continue 
                idx = idx - 1
                t = t << 16 or 962854912
                continue 
            if 254 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 14693
                    continue 
                idx = idx - 1
                t = t << 16 or 962920448
                continue 
            if uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240 != 255:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 14592
                    continue 
                idx = idx - 1
                t = t << 16 or 956301312
                continue 
            if 0 == uint8(idx):
                idx = idx - 1
                t = t or 14694
                continue 
            idx = idx - 1
            t = t << 16 or 962985984
            continue 
        if 250 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) / 16 or 240:
            if uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240 == 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 24880
                    continue 
                idx = idx - 1
                t = t << 16 or 1630535680
                continue 
            if 241 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 24881
                    continue 
                idx = idx - 1
                t = t << 16 or 1630601216
                continue 
            if 242 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 24882
                    continue 
                idx = idx - 1
                t = t << 16 or 1630666752
                continue 
            if 243 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 24883
                    continue 
                idx = idx - 1
                t = t << 16 or 1630732288
                continue 
            if 244 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 24884
                    continue 
                idx = idx - 1
                t = t << 16 or 1630797824
                continue 
            if 245 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 24885
                    continue 
                idx = idx - 1
                t = t << 16 or 1630863360
                continue 
            if 246 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 24886
                    continue 
                idx = idx - 1
                t = t << 16 or 1630928896
                continue 
            if 247 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 24887
                    continue 
                idx = idx - 1
                t = t << 16 or 1630994432
                continue 
            if 248 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 24888
                    continue 
                idx = idx - 1
                t = t << 16 or 1631059968
                continue 
            if 249 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 24889
                    continue 
                idx = idx - 1
                t = t << 16 or 1631125504
                continue 
            if 250 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 24929
                    continue 
                idx = idx - 1
                t = t << 16 or 1633746944
                continue 
            if 251 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 24930
                    continue 
                idx = idx - 1
                t = t << 16 or 1633812480
                continue 
            if 252 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 24931
                    continue 
                idx = idx - 1
                t = t << 16 or 1633878016
                continue 
            if 253 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 24932
                    continue 
                idx = idx - 1
                t = t << 16 or 1633943552
                continue 
            if 254 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 24933
                    continue 
                idx = idx - 1
                t = t << 16 or 1634009088
                continue 
            if uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240 != 255:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 24832
                    continue 
                idx = idx - 1
                t = t << 16 or 1627389952
                continue 
            if 0 == uint8(idx):
                idx = idx - 1
                t = t or 24934
                continue 
            idx = idx - 1
            t = t << 16 or 1634074624
            continue 
        if 251 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) / 16 or 240:
            if uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240 == 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 25136
                    continue 
                idx = idx - 1
                t = t << 16 or 1647312896
                continue 
            if 241 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 25137
                    continue 
                idx = idx - 1
                t = t << 16 or 1647378432
                continue 
            if 242 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 25138
                    continue 
                idx = idx - 1
                t = t << 16 or 1647443968
                continue 
            if 243 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 25139
                    continue 
                idx = idx - 1
                t = t << 16 or 1647509504
                continue 
            if 244 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 25140
                    continue 
                idx = idx - 1
                t = t << 16 or 1647575040
                continue 
            if 245 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 25141
                    continue 
                idx = idx - 1
                t = t << 16 or 1647640576
                continue 
            if 246 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 25142
                    continue 
                idx = idx - 1
                t = t << 16 or 1647706112
                continue 
            if 247 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 25143
                    continue 
                idx = idx - 1
                t = t << 16 or 1647771648
                continue 
            if 248 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 25144
                    continue 
                idx = idx - 1
                t = t << 16 or 1647837184
                continue 
            if 249 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 25145
                    continue 
                idx = idx - 1
                t = t << 16 or 1647902720
                continue 
            if 250 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 25185
                    continue 
                idx = idx - 1
                t = t << 16 or 1650524160
                continue 
            if 251 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 25186
                    continue 
                idx = idx - 1
                t = t << 16 or 1650589696
                continue 
            if 252 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 25187
                    continue 
                idx = idx - 1
                t = t << 16 or 1650655232
                continue 
            if 253 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 25188
                    continue 
                idx = idx - 1
                t = t << 16 or 1650720768
                continue 
            if 254 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 25189
                    continue 
                idx = idx - 1
                t = t << 16 or 1650786304
                continue 
            if uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240 != 255:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 25088
                    continue 
                idx = idx - 1
                t = t << 16 or 1644167168
                continue 
            if 0 == uint8(idx):
                idx = idx - 1
                t = t or 25190
                continue 
            idx = idx - 1
            t = t << 16 or 1650851840
            continue 
        if 252 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) / 16 or 240:
            if uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240 == 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 25392
                    continue 
                idx = idx - 1
                t = t << 16 or 1664090112
                continue 
            if 241 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 25393
                    continue 
                idx = idx - 1
                t = t << 16 or 1664155648
                continue 
            if 242 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 25394
                    continue 
                idx = idx - 1
                t = t << 16 or 1664221184
                continue 
            if 243 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 25395
                    continue 
                idx = idx - 1
                t = t << 16 or 1664286720
                continue 
            if 244 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 25396
                    continue 
                idx = idx - 1
                t = t << 16 or 1664352256
                continue 
            if 245 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 25397
                    continue 
                idx = idx - 1
                t = t << 16 or 1664417792
                continue 
            if 246 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 25398
                    continue 
                idx = idx - 1
                t = t << 16 or 1664483328
                continue 
            if 247 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 25399
                    continue 
                idx = idx - 1
                t = t << 16 or 1664548864
                continue 
            if 248 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 25400
                    continue 
                idx = idx - 1
                t = t << 16 or 1664614400
                continue 
            if 249 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 25401
                    continue 
                idx = idx - 1
                t = t << 16 or 1664679936
                continue 
            if 250 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 25441
                    continue 
                idx = idx - 1
                t = t << 16 or 1667301376
                continue 
            if 251 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 25442
                    continue 
                idx = idx - 1
                t = t << 16 or 1667366912
                continue 
            if 252 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 25443
                    continue 
                idx = idx - 1
                t = t << 16 or 1667432448
                continue 
            if 253 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 25444
                    continue 
                idx = idx - 1
                t = t << 16 or 1667497984
                continue 
            if 254 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 25445
                    continue 
                idx = idx - 1
                t = t << 16 or 1667563520
                continue 
            if uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240 != 255:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 25344
                    continue 
                idx = idx - 1
                t = t << 16 or 1660944384
                continue 
            if 0 == uint8(idx):
                idx = idx - 1
                t = t or 25446
                continue 
            idx = idx - 1
            t = t << 16 or 1667629056
            continue 
        if 253 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) / 16 or 240:
            if uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240 == 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 25648
                    continue 
                idx = idx - 1
                t = t << 16 or 1680867328
                continue 
            if 241 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 25649
                    continue 
                idx = idx - 1
                t = t << 16 or 1680932864
                continue 
            if 242 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 25650
                    continue 
                idx = idx - 1
                t = t << 16 or 466944 * 24 * 3600
                continue 
            if 243 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 25651
                    continue 
                idx = idx - 1
                t = t << 16 or 1681063936
                continue 
            if 244 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 25652
                    continue 
                idx = idx - 1
                t = t << 16 or 1681129472
                continue 
            if 245 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 25653
                    continue 
                idx = idx - 1
                t = t << 16 or 1681195008
                continue 
            if 246 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 25654
                    continue 
                idx = idx - 1
                t = t << 16 or 1681260544
                continue 
            if 247 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 25655
                    continue 
                idx = idx - 1
                t = t << 16 or 1681326080
                continue 
            if 248 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 25656
                    continue 
                idx = idx - 1
                t = t << 16 or 1681391616
                continue 
            if 249 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 25657
                    continue 
                idx = idx - 1
                t = t << 16 or 1681457152
                continue 
            if 250 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 25697
                    continue 
                idx = idx - 1
                t = t << 16 or 1684078592
                continue 
            if 251 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 25698
                    continue 
                idx = idx - 1
                t = t << 16 or 1684144128
                continue 
            if 252 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 25699
                    continue 
                idx = idx - 1
                t = t << 16 or 1684209664
                continue 
            if 253 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 25700
                    continue 
                idx = idx - 1
                t = t << 16 or 1684275200
                continue 
            if 254 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 25701
                    continue 
                idx = idx - 1
                t = t << 16 or 1684340736
                continue 
            if uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240 != 255:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 25600
                    continue 
                idx = idx - 1
                t = t << 16 or 1677721600
                continue 
            if 0 == uint8(idx):
                idx = idx - 1
                t = t or 25702
                continue 
            idx = idx - 1
            t = t << 16 or 1684406272
            continue 
        if 254 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) / 16 or 240:
            if uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240 == 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 25904
                    continue 
                idx = idx - 1
                t = t << 16 or 1697644544
                continue 
            if 241 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 25905
                    continue 
                idx = idx - 1
                t = t << 16 or 1697710080
                continue 
            if 242 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 25906
                    continue 
                idx = idx - 1
                t = t << 16 or 1697775616
                continue 
            if 243 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 25907
                    continue 
                idx = idx - 1
                t = t << 16 or 1697841152
                continue 
            if 244 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 25908
                    continue 
                idx = idx - 1
                t = t << 16 or 1697906688
                continue 
            if 245 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 25909
                    continue 
                idx = idx - 1
                t = t << 16 or 1697972224
                continue 
            if 246 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 25910
                    continue 
                idx = idx - 1
                t = t << 16 or 1698037760
                continue 
            if 247 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 25911
                    continue 
                idx = idx - 1
                t = t << 16 or 1698103296
                continue 
            if 248 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 25912
                    continue 
                idx = idx - 1
                t = t << 16 or 1698168832
                continue 
            if 249 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 25913
                    continue 
                idx = idx - 1
                t = t << 16 or 1698234368
                continue 
            if 250 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 25953
                    continue 
                idx = idx - 1
                t = t << 16 or 1700855808
                continue 
            if 251 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 25954
                    continue 
                idx = idx - 1
                t = t << 16 or 1700921344
                continue 
            if 252 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 25955
                    continue 
                idx = idx - 1
                t = t << 16 or 1700986880
                continue 
            if 253 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 25956
                    continue 
                idx = idx - 1
                t = t << 16 or 1701052416
                continue 
            if 254 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 25957
                    continue 
                idx = idx - 1
                t = t << 16 or 1701117952
                continue 
            if uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240 != 255:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 25856
                    continue 
                idx = idx - 1
                t = t << 16 or 1694498816
                continue 
            if 0 == uint8(idx):
                idx = idx - 1
                t = t or 25958
                continue 
            idx = idx - 1
            t = t << 16 or 1701183488
            continue 
        if uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) / 16 or 240 != 255:
            if uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240 == 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 48
                    continue 
                idx = idx - 1
                t = t << 16 or 3145728
                continue 
            if 241 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 49
                    continue 
                idx = idx - 1
                t = t << 16 or 3211264
                continue 
            if 242 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 50
                    continue 
                idx = idx - 1
                t = t << 16 or 3276800
                continue 
            if 243 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 51
                    continue 
                idx = idx - 1
                t = t << 16 or 3342336
                continue 
            if 244 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 52
                    continue 
                idx = idx - 1
                t = t << 16 or 3407872
                continue 
            if 245 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 53
                    continue 
                idx = idx - 1
                t = t << 16 or 3473408
                continue 
            if 246 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 54
                    continue 
                idx = idx - 1
                t = t << 16 or 3538944
                continue 
            if 247 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 55
                    continue 
                idx = idx - 1
                t = t << 16 or 3604480
                continue 
            if 248 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 56
                    continue 
                idx = idx - 1
                t = t << 16 or 3670016
                continue 
            if 249 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 57
                    continue 
                idx = idx - 1
                t = t << 16 or 3735552
                continue 
            if 250 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 97
                    continue 
                idx = idx - 1
                t = t << 16 or 6356992
                continue 
            if 251 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 98
                    continue 
                idx = idx - 1
                t = t << 16 or 6422528
                continue 
            if 252 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 99
                    continue 
                idx = idx - 1
                t = t << 16 or 6488064
                continue 
            if 253 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 100
                    continue 
                idx = idx - 1
                t = t << 16 or 6553600
                continue 
            if 254 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t or 101
                    continue 
                idx = idx - 1
                t = t << 16 or 6619136
                continue 
            if uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240 != 255:
                if 0 == uint8(idx):
                    idx = idx - 1
                    t = t
                    continue 
                idx = idx - 1
                t = t << 16
                continue 
            if 0 == uint8(idx):
                idx = idx - 1
                t = t or 102
                continue 
            idx = idx - 1
            t = t << 16 or 6684672
            continue 
        if uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240 == 240:
            if 0 == uint8(idx):
                idx = idx - 1
                t = t or 26160
                continue 
            idx = idx - 1
            t = t << 16 or 1714421760
            continue 
        if 241 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
            if 0 == uint8(idx):
                idx = idx - 1
                t = t or 26161
                continue 
            idx = idx - 1
            t = t << 16 or 1714487296
            continue 
        if 242 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
            if 0 == uint8(idx):
                idx = idx - 1
                t = t or 26162
                continue 
            idx = idx - 1
            t = t << 16 or 1714552832
            continue 
        if 243 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
            if 0 == uint8(idx):
                idx = idx - 1
                t = t or 26163
                continue 
            idx = idx - 1
            t = t << 16 or 1714618368
            continue 
        if 244 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
            if 0 == uint8(idx):
                idx = idx - 1
                t = t or 26164
                continue 
            idx = idx - 1
            t = t << 16 or 1714683904
            continue 
        if 245 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
            if 0 == uint8(idx):
                idx = idx - 1
                t = t or 26165
                continue 
            idx = idx - 1
            t = t << 16 or 1714749440
            continue 
        if 246 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
            if 0 == uint8(idx):
                idx = idx - 1
                t = t or 26166
                continue 
            idx = idx - 1
            t = t << 16 or 1714814976
            continue 
        if 247 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
            if 0 == uint8(idx):
                idx = idx - 1
                t = t or 26167
                continue 
            idx = idx - 1
            t = t << 16 or 1714880512
            continue 
        if 248 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
            if 0 == uint8(idx):
                idx = idx - 1
                t = t or 26168
                continue 
            idx = idx - 1
            t = t << 16 or 1714946048
            continue 
        if 249 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
            if 0 == uint8(idx):
                idx = idx - 1
                t = t or 26169
                continue 
            idx = idx - 1
            t = t << 16 or 1715011584
            continue 
        if 250 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
            if 0 == uint8(idx):
                idx = idx - 1
                t = t or 26209
                continue 
            idx = idx - 1
            t = t << 16 or 1717633024
            continue 
        if 251 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
            if 0 == uint8(idx):
                idx = idx - 1
                t = t or 26210
                continue 
            idx = idx - 1
            t = t << 16 or 1717698560
            continue 
        if 252 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
            if 0 == uint8(idx):
                idx = idx - 1
                t = t or 26211
                continue 
            idx = idx - 1
            t = t << 16 or 1717764096
            continue 
        if 253 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
            if 0 == uint8(idx):
                idx = idx - 1
                t = t or 26212
                continue 
            idx = idx - 1
            t = t << 16 or 1717829632
            continue 
        if 254 == uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240:
            if 0 == uint8(idx):
                idx = idx - 1
                t = t or 26213
                continue 
            idx = idx - 1
            t = t << 16 or 1717895168
            continue 
        if uint8(Mask(256, -8 * idx % 32, 2) >> 8 * idx % 32) or 240 != 255:
            if 0 == uint8(idx):
                idx = idx - 1
                t = t or 26112
                continue 
            idx = idx - 1
            t = t << 16 or 1711276032
            continue 
        if 0 == uint8(idx):
            idx = idx - 1
            t = t or 26214
            continue 
        idx = idx - 1
        t = t << 16 or 1717960704
        continue 
    mem[ceil32(arg3.length) + 160] = 'Type assertion failed. Got 0x'
    mem[ceil32(arg3.length) + 189] = s << 176
    mem[ceil32(arg3.length) + 199] = '. Expected 0x'
    mem[ceil32(arg3.length) + 212] = t << 176
    mem[ceil32(arg3.length) + 128] = 62
    mem[64] = ceil32(arg3.length) + 222
    mem[ceil32(arg3.length) + 222] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg3.length) + 226] = 32
    mem[ceil32(arg3.length) + 258] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
    mem[ceil32(arg3.length) + 290 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
    if not Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32:
        revert with 0, 
                    32,
                    mem[ceil32(arg3.length) + 258 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + 32]
    mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + ceil32(arg3.length) + 290] = mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + ceil32(arg3.length) + -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 322 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32]
    revert with 0, 
                32,
                mem[ceil32(arg3.length) + 258 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 64]
}



}
