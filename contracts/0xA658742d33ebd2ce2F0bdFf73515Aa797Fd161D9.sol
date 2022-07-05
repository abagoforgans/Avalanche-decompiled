contract main {




// =====================  Runtime code  =====================


uint256 stor0;
uint8 stor1;
uint8 stor1; offset 8
uint256 stor1; offset 8
address owner;
address sub_6c473affAddress;
mapping of struct sub_765a8a54;
mapping of struct sub_23161ff8;
mapping of uint8 stor105;
address storB531;
uint256 storB531;

function sub_23161ff8(?) {
    require calldata.size - 4 >= 64
    return sub_23161ff8[arg1][arg2].field_0, sub_23161ff8[arg1][arg2].field_0, sub_23161ff8[arg1][arg2].field_192
}

function isApproved(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor105[address(arg1)])
}

function sub_6c473aff(?) {
    return sub_6c473affAddress
}

function sub_765a8a54(?) {
    require calldata.size - 4 >= 32
    return sub_765a8a54[arg1].field_0, sub_765a8a54[arg1].field_128
}

function owner() {
    return owner
}

function approvedAddresses(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor105[arg1])
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

function sub_3a5fb82a(?) {
    require calldata.size - 4 >= 96
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
}

function setApprovedAddress(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor105[address(arg1)] = uint8(arg2)
    emit 0xb10786d0: address(arg1), arg2
}

function sub_b8f8bad4(?) {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        if not stor105[address(msg.sender)]:
            revert with 0, 'Relayer: not approved'
    sub_765a8a54[arg1 << 240].field_0 = arg2
    sub_765a8a54[arg1 << 240].field_128 = arg3
}

function sub_3f103487(?) {
    require calldata.size - 4 >= 160
    if owner != msg.sender:
        if not stor105[address(msg.sender)]:
            revert with 0, 'Relayer: not approved'
    sub_23161ff8[arg1 << 240][arg2 << 240].field_0 = arg3
    sub_23161ff8[arg1 << 240][arg2 << 240].field_128 = arg4
    sub_23161ff8[arg1 << 240][arg2 << 240].field_192 = arg5
}

function sub_ea4fa6bf(?) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        if not stor105[address(msg.sender)]:
            revert with 0, 'Relayer: not approved'
    require ext_code.size(sub_6c473affAddress)
    call sub_6c473affAddress.0x22c10776 with:
         gas gas_remaining wei
        args 0, 2, 0, address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x654f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_ac16d6ac(?) {
    require calldata.size - 4 >= 160
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    if owner != msg.sender:
        if not stor105[address(msg.sender)]:
            revert with 0, 'Relayer: not approved'
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    mem[292 len arg4.length] = arg4[all]
    mem[arg4.length + 292] = 0
    require ext_code.size(sub_6c473affAddress)
    call sub_6c473affAddress.0x5c011531 with:
         gas gas_remaining wei
        args 0, 0, address(arg1), arg2, arg3, 160, arg4.length, arg4[all], mem[arg4.length + 292 len ceil32(arg4.length) - arg4.length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor0 = 1
}

function sub_fdf69784(?) payable {
    require calldata.size - 4 >= 192
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + arg5.length + 36 <= calldata.size
    if owner != msg.sender:
        if not stor105[address(msg.sender)]:
            revert with 0, 'Relayer: not approved'
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    call arg6 with:
       value msg.value wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'Relayer: failed to send ether'
    if return_data.size:
        require ext_code.size(sub_6c473affAddress)
        call sub_6c473affAddress.0x5c011531 with:
             gas gas_remaining wei
            args arg1 << 240, address(arg2), arg3, arg4, Array(len=arg5.length, data=arg5[all])
    else:
        mem[292 len arg5.length] = arg5[all]
        mem[arg5.length + 292] = 0
        require ext_code.size(sub_6c473affAddress)
        call sub_6c473affAddress.0x5c011531 with:
             gas gas_remaining wei
            args 0, 0, address(arg2), arg3, arg4, 160, arg5.length, arg5[all], mem[arg5.length + 292 len ceil32(arg5.length) - arg5.length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor0 = 1
}

function initialize(address arg1) {
    require calldata.size - 4 >= 32
    if address(storB531):
        require address(storB531) == msg.sender
    else:
        uint256(storB531) = 0xffffffffffffffffffffffffffffffffffffffff
    if uint8(stor1.field_8):
        owner = msg.sender
        emit OwnershipTransferred(0, msg.sender);
    else:
        if ext_code.size(this.address):
            if uint8(stor1.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            46,
                            0x73496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                            mem[210 len 18]
        if uint8(stor1.field_8):
            owner = msg.sender
            emit OwnershipTransferred(0, msg.sender);
        else:
            uint8(stor1.field_0) = 1
            uint8(stor1.field_8) = 1
            Mask(248, 0, stor1.field_8) = 0
            if ext_code.size(this.address):
                if uint8(stor1.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                46,
                                0x73496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                mem[210 len 18]
            if uint8(stor1.field_8):
                owner = msg.sender
                emit OwnershipTransferred(0, msg.sender);
            else:
                uint8(stor1.field_0) = 1
                uint8(stor1.field_8) = 1
                Mask(248, 0, stor1.field_8) = 0
                if ext_code.size(this.address):
                    if uint8(stor1.field_0):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    46,
                                    0x73496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                    mem[210 len 18]
                if uint8(stor1.field_8):
                    owner = msg.sender
                    emit OwnershipTransferred(0, msg.sender);
                else:
                    uint8(stor1.field_0) = 1
                    uint8(stor1.field_8) = 1
                    Mask(248, 0, stor1.field_8) = 0
                    uint8(stor1.field_8) = 0
                    if ext_code.size(this.address):
                        if uint8(stor1.field_0):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        46,
                                        0x73496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                        mem[210 len 18]
                    if uint8(stor1.field_8):
                        owner = msg.sender
                        emit OwnershipTransferred(0, msg.sender);
                    else:
                        uint8(stor1.field_0) = 1
                        uint8(stor1.field_8) = 1
                        Mask(248, 0, stor1.field_8) = 0
                        owner = msg.sender
                        emit OwnershipTransferred(0, msg.sender);
                        uint8(stor1.field_8) = 0
                        uint8(stor1.field_8) = 0
    sub_6c473affAddress = arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor105[address(this.address)] = 1
    emit 0xb10786d0: address(this.address), 1
    if not uint8(stor1.field_8):
        uint8(stor1.field_8) = 0
}

function sub_e54a2215(?) {
    require calldata.size - 4 >= 160
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    if arg4.length != 34:
        if arg4.length <= 66:
            revert with 0, 
                        32,
                        38,
                        0xfe52656c617965723a2077726f6e67205f61646170746572506172616d65746572732073697a,
                        mem[ceil32(arg4.length) + 234 len 26]
    if not mem[130]:
        revert with 0, 'Relayer: gas too low'
    if 1 == mem[128 len 2]:
        if mem[128 len 2] != 2:
            if mem[130] + sub_23161ff8[arg1 << 240][arg2 << 240].field_128 < sub_23161ff8[arg1 << 240][arg2 << 240].field_128:
                revert with 0, 'SafeMath: addition overflow'
            if not sub_765a8a54[arg1 << 240].field_128:
                if not sub_765a8a54[arg1 << 240].field_128:
                    if arg3:
                        if 0 / arg3:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg4.length) + 229 len 31]
                    mem[ceil32(arg4.length) + 128] = 0
                else:
                    if sub_23161ff8[arg1 << 240][arg2 << 240].field_192 * sub_765a8a54[arg1 << 240].field_128 / sub_765a8a54[arg1 << 240].field_128 != sub_23161ff8[arg1 << 240][arg2 << 240].field_192:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg4.length) + 229 len 31]
                    if not sub_23161ff8[arg1 << 240][arg2 << 240].field_192 * sub_765a8a54[arg1 << 240].field_128:
                        if arg3:
                            if 0 / arg3:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg4.length) + 229 len 31]
                        mem[ceil32(arg4.length) + 128] = 0
                    else:
                        if sub_765a8a54[arg1 << 240].field_0 * sub_23161ff8[arg1 << 240][arg2 << 240].field_192 * sub_765a8a54[arg1 << 240].field_128 / sub_23161ff8[arg1 << 240][arg2 << 240].field_192 * sub_765a8a54[arg1 << 240].field_128 != sub_765a8a54[arg1 << 240].field_0:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg4.length) + 229 len 31]
                        if not arg3:
                            mem[ceil32(arg4.length) + 128] = 0
                        else:
                            if sub_765a8a54[arg1 << 240].field_0 * sub_23161ff8[arg1 << 240][arg2 << 240].field_192 * sub_765a8a54[arg1 << 240].field_128 / 10^10 * arg3 / arg3 != sub_765a8a54[arg1 << 240].field_0 * sub_23161ff8[arg1 << 240][arg2 << 240].field_192 * sub_765a8a54[arg1 << 240].field_128 / 10^10:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg4.length) + 229 len 31]
                            if sub_765a8a54[arg1 << 240].field_0 * sub_23161ff8[arg1 << 240][arg2 << 240].field_192 * sub_765a8a54[arg1 << 240].field_128 / 10^10 * arg3 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[ceil32(arg4.length) + 128] = sub_765a8a54[arg1 << 240].field_0 * sub_23161ff8[arg1 << 240][arg2 << 240].field_192 * sub_765a8a54[arg1 << 240].field_128 / 10^10 * arg3
            else:
                if (mem[130] * sub_765a8a54[arg1 << 240].field_128) + (sub_23161ff8[arg1 << 240][arg2 << 240].field_128 * sub_765a8a54[arg1 << 240].field_128) / sub_765a8a54[arg1 << 240].field_128 != mem[130] + sub_23161ff8[arg1 << 240][arg2 << 240].field_128:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg4.length) + 229 len 31]
                if (mem[130] * sub_765a8a54[arg1 << 240].field_128) + (sub_23161ff8[arg1 << 240][arg2 << 240].field_128 * sub_765a8a54[arg1 << 240].field_128) < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if not (mem[130] * sub_765a8a54[arg1 << 240].field_128) + (sub_23161ff8[arg1 << 240][arg2 << 240].field_128 * sub_765a8a54[arg1 << 240].field_128):
                    if not sub_765a8a54[arg1 << 240].field_128:
                        if arg3:
                            if 0 / arg3:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg4.length) + 229 len 31]
                        mem[ceil32(arg4.length) + 128] = 0
                    else:
                        if sub_23161ff8[arg1 << 240][arg2 << 240].field_192 * sub_765a8a54[arg1 << 240].field_128 / sub_765a8a54[arg1 << 240].field_128 != sub_23161ff8[arg1 << 240][arg2 << 240].field_192:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg4.length) + 229 len 31]
                        if not sub_23161ff8[arg1 << 240][arg2 << 240].field_192 * sub_765a8a54[arg1 << 240].field_128:
                            if arg3:
                                if 0 / arg3:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg4.length) + 229 len 31]
                            mem[ceil32(arg4.length) + 128] = 0
                        else:
                            if sub_765a8a54[arg1 << 240].field_0 * sub_23161ff8[arg1 << 240][arg2 << 240].field_192 * sub_765a8a54[arg1 << 240].field_128 / sub_23161ff8[arg1 << 240][arg2 << 240].field_192 * sub_765a8a54[arg1 << 240].field_128 != sub_765a8a54[arg1 << 240].field_0:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg4.length) + 229 len 31]
                            if not arg3:
                                mem[ceil32(arg4.length) + 128] = 0
                            else:
                                if sub_765a8a54[arg1 << 240].field_0 * sub_23161ff8[arg1 << 240][arg2 << 240].field_192 * sub_765a8a54[arg1 << 240].field_128 / 10^10 * arg3 / arg3 != sub_765a8a54[arg1 << 240].field_0 * sub_23161ff8[arg1 << 240][arg2 << 240].field_192 * sub_765a8a54[arg1 << 240].field_128 / 10^10:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg4.length) + 229 len 31]
                                if sub_765a8a54[arg1 << 240].field_0 * sub_23161ff8[arg1 << 240][arg2 << 240].field_192 * sub_765a8a54[arg1 << 240].field_128 / 10^10 * arg3 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[ceil32(arg4.length) + 128] = sub_765a8a54[arg1 << 240].field_0 * sub_23161ff8[arg1 << 240][arg2 << 240].field_192 * sub_765a8a54[arg1 << 240].field_128 / 10^10 * arg3
                else:
                    if (mem[130] * sub_765a8a54[arg1 << 240].field_128 * sub_765a8a54[arg1 << 240].field_0) + (sub_23161ff8[arg1 << 240][arg2 << 240].field_128 * sub_765a8a54[arg1 << 240].field_128 * sub_765a8a54[arg1 << 240].field_0) / (mem[130] * sub_765a8a54[arg1 << 240].field_128) + (sub_23161ff8[arg1 << 240][arg2 << 240].field_128 * sub_765a8a54[arg1 << 240].field_128) != sub_765a8a54[arg1 << 240].field_0:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg4.length) + 229 len 31]
                    if not sub_765a8a54[arg1 << 240].field_128:
                        if arg3:
                            if 0 / arg3:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg4.length) + 229 len 31]
                        if (mem[130] * sub_765a8a54[arg1 << 240].field_128 * sub_765a8a54[arg1 << 240].field_0) + (sub_23161ff8[arg1 << 240][arg2 << 240].field_128 * sub_765a8a54[arg1 << 240].field_128 * sub_765a8a54[arg1 << 240].field_0) / 10^10 < (mem[130] * sub_765a8a54[arg1 << 240].field_128 * sub_765a8a54[arg1 << 240].field_0) + (sub_23161ff8[arg1 << 240][arg2 << 240].field_128 * sub_765a8a54[arg1 << 240].field_128 * sub_765a8a54[arg1 << 240].field_0) / 10^10:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[ceil32(arg4.length) + 128] = (mem[130] * sub_765a8a54[arg1 << 240].field_128 * sub_765a8a54[arg1 << 240].field_0) + (sub_23161ff8[arg1 << 240][arg2 << 240].field_128 * sub_765a8a54[arg1 << 240].field_128 * sub_765a8a54[arg1 << 240].field_0) / 10^10
                    else:
                        if sub_23161ff8[arg1 << 240][arg2 << 240].field_192 * sub_765a8a54[arg1 << 240].field_128 / sub_765a8a54[arg1 << 240].field_128 != sub_23161ff8[arg1 << 240][arg2 << 240].field_192:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg4.length) + 229 len 31]
                        if not sub_23161ff8[arg1 << 240][arg2 << 240].field_192 * sub_765a8a54[arg1 << 240].field_128:
                            if arg3:
                                if 0 / arg3:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg4.length) + 229 len 31]
                            if (mem[130] * sub_765a8a54[arg1 << 240].field_128 * sub_765a8a54[arg1 << 240].field_0) + (sub_23161ff8[arg1 << 240][arg2 << 240].field_128 * sub_765a8a54[arg1 << 240].field_128 * sub_765a8a54[arg1 << 240].field_0) / 10^10 < (mem[130] * sub_765a8a54[arg1 << 240].field_128 * sub_765a8a54[arg1 << 240].field_0) + (sub_23161ff8[arg1 << 240][arg2 << 240].field_128 * sub_765a8a54[arg1 << 240].field_128 * sub_765a8a54[arg1 << 240].field_0) / 10^10:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[ceil32(arg4.length) + 128] = (mem[130] * sub_765a8a54[arg1 << 240].field_128 * sub_765a8a54[arg1 << 240].field_0) + (sub_23161ff8[arg1 << 240][arg2 << 240].field_128 * sub_765a8a54[arg1 << 240].field_128 * sub_765a8a54[arg1 << 240].field_0) / 10^10
                        else:
                            if sub_765a8a54[arg1 << 240].field_0 * sub_23161ff8[arg1 << 240][arg2 << 240].field_192 * sub_765a8a54[arg1 << 240].field_128 / sub_23161ff8[arg1 << 240][arg2 << 240].field_192 * sub_765a8a54[arg1 << 240].field_128 != sub_765a8a54[arg1 << 240].field_0:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg4.length) + 229 len 31]
                            if not arg3:
                                if (mem[130] * sub_765a8a54[arg1 << 240].field_128 * sub_765a8a54[arg1 << 240].field_0) + (sub_23161ff8[arg1 << 240][arg2 << 240].field_128 * sub_765a8a54[arg1 << 240].field_128 * sub_765a8a54[arg1 << 240].field_0) / 10^10 < (mem[130] * sub_765a8a54[arg1 << 240].field_128 * sub_765a8a54[arg1 << 240].field_0) + (sub_23161ff8[arg1 << 240][arg2 << 240].field_128 * sub_765a8a54[arg1 << 240].field_128 * sub_765a8a54[arg1 << 240].field_0) / 10^10:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[ceil32(arg4.length) + 128] = (mem[130] * sub_765a8a54[arg1 << 240].field_128 * sub_765a8a54[arg1 << 240].field_0) + (sub_23161ff8[arg1 << 240][arg2 << 240].field_128 * sub_765a8a54[arg1 << 240].field_128 * sub_765a8a54[arg1 << 240].field_0) / 10^10
                            else:
                                if sub_765a8a54[arg1 << 240].field_0 * sub_23161ff8[arg1 << 240][arg2 << 240].field_192 * sub_765a8a54[arg1 << 240].field_128 / 10^10 * arg3 / arg3 != sub_765a8a54[arg1 << 240].field_0 * sub_23161ff8[arg1 << 240][arg2 << 240].field_192 * sub_765a8a54[arg1 << 240].field_128 / 10^10:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg4.length) + 229 len 31]
                                if (sub_765a8a54[arg1 << 240].field_0 * sub_23161ff8[arg1 << 240][arg2 << 240].field_192 * sub_765a8a54[arg1 << 240].field_128 / 10^10 * arg3) + ((mem[130] * sub_765a8a54[arg1 << 240].field_128 * sub_765a8a54[arg1 << 240].field_0) + (sub_23161ff8[arg1 << 240][arg2 << 240].field_128 * sub_765a8a54[arg1 << 240].field_128 * sub_765a8a54[arg1 << 240].field_0) / 10^10) < (mem[130] * sub_765a8a54[arg1 << 240].field_128 * sub_765a8a54[arg1 << 240].field_0) + (sub_23161ff8[arg1 << 240][arg2 << 240].field_128 * sub_765a8a54[arg1 << 240].field_128 * sub_765a8a54[arg1 << 240].field_0) / 10^10:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[ceil32(arg4.length) + 128] = (sub_765a8a54[arg1 << 240].field_0 * sub_23161ff8[arg1 << 240][arg2 << 240].field_192 * sub_765a8a54[arg1 << 240].field_128 / 10^10 * arg3) + ((mem[130] * sub_765a8a54[arg1 << 240].field_128 * sub_765a8a54[arg1 << 240].field_0) + (sub_23161ff8[arg1 << 240][arg2 << 240].field_128 * sub_765a8a54[arg1 << 240].field_128 * sub_765a8a54[arg1 << 240].field_0) / 10^10)
        else:
            if mem[162] > sub_23161ff8[arg1 << 240][arg2 << 240].field_0:
                revert with 0, 'Relayer: dstNativeAmt too large'
            if mem[162] < 0:
                revert with 0, 'SafeMath: addition overflow'
            if mem[130] + sub_23161ff8[arg1 << 240][arg2 << 240].field_128 < sub_23161ff8[arg1 << 240][arg2 << 240].field_128:
                revert with 0, 'SafeMath: addition overflow'
            if not sub_765a8a54[arg1 << 240].field_128:
                if mem[162] < mem[162]:
                    revert with 0, 'SafeMath: addition overflow'
                if not mem[162]:
                    if not sub_765a8a54[arg1 << 240].field_128:
                        if arg3:
                            if 0 / arg3:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg4.length) + 229 len 31]
                        mem[ceil32(arg4.length) + 128] = 0
                    else:
                        if sub_23161ff8[arg1 << 240][arg2 << 240].field_192 * sub_765a8a54[arg1 << 240].field_128 / sub_765a8a54[arg1 << 240].field_128 != sub_23161ff8[arg1 << 240][arg2 << 240].field_192:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg4.length) + 229 len 31]
                        if not sub_23161ff8[arg1 << 240][arg2 << 240].field_192 * sub_765a8a54[arg1 << 240].field_128:
                            if arg3:
                                if 0 / arg3:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg4.length) + 229 len 31]
                            mem[ceil32(arg4.length) + 128] = 0
                        else:
                            if sub_765a8a54[arg1 << 240].field_0 * sub_23161ff8[arg1 << 240][arg2 << 240].field_192 * sub_765a8a54[arg1 << 240].field_128 / sub_23161ff8[arg1 << 240][arg2 << 240].field_192 * sub_765a8a54[arg1 << 240].field_128 != sub_765a8a54[arg1 << 240].field_0:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg4.length) + 229 len 31]
                            if not arg3:
                                mem[ceil32(arg4.length) + 128] = 0
                            else:
                                if sub_765a8a54[arg1 << 240].field_0 * sub_23161ff8[arg1 << 240][arg2 << 240].field_192 * sub_765a8a54[arg1 << 240].field_128 / 10^10 * arg3 / arg3 != sub_765a8a54[arg1 << 240].field_0 * sub_23161ff8[arg1 << 240][arg2 << 240].field_192 * sub_765a8a54[arg1 << 240].field_128 / 10^10:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg4.length) + 229 len 31]
                                if sub_765a8a54[arg1 << 240].field_0 * sub_23161ff8[arg1 << 240][arg2 << 240].field_192 * sub_765a8a54[arg1 << 240].field_128 / 10^10 * arg3 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[ceil32(arg4.length) + 128] = sub_765a8a54[arg1 << 240].field_0 * sub_23161ff8[arg1 << 240][arg2 << 240].field_192 * sub_765a8a54[arg1 << 240].field_128 / 10^10 * arg3
                else:
                    if sub_765a8a54[arg1 << 240].field_0 * mem[162] / mem[162] != sub_765a8a54[arg1 << 240].field_0:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg4.length) + 229 len 31]
                    if not sub_765a8a54[arg1 << 240].field_128:
                        if arg3:
                            if 0 / arg3:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg4.length) + 229 len 31]
                        if sub_765a8a54[arg1 << 240].field_0 * mem[162] / 10^10 < sub_765a8a54[arg1 << 240].field_0 * mem[162] / 10^10:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[ceil32(arg4.length) + 128] = sub_765a8a54[arg1 << 240].field_0 * mem[162] / 10^10
                    else:
                        if sub_23161ff8[arg1 << 240][arg2 << 240].field_192 * sub_765a8a54[arg1 << 240].field_128 / sub_765a8a54[arg1 << 240].field_128 != sub_23161ff8[arg1 << 240][arg2 << 240].field_192:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg4.length) + 229 len 31]
                        if not sub_23161ff8[arg1 << 240][arg2 << 240].field_192 * sub_765a8a54[arg1 << 240].field_128:
                            if arg3:
                                if 0 / arg3:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg4.length) + 229 len 31]
                            if sub_765a8a54[arg1 << 240].field_0 * mem[162] / 10^10 < sub_765a8a54[arg1 << 240].field_0 * mem[162] / 10^10:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[ceil32(arg4.length) + 128] = sub_765a8a54[arg1 << 240].field_0 * mem[162] / 10^10
                        else:
                            if sub_765a8a54[arg1 << 240].field_0 * sub_23161ff8[arg1 << 240][arg2 << 240].field_192 * sub_765a8a54[arg1 << 240].field_128 / sub_23161ff8[arg1 << 240][arg2 << 240].field_192 * sub_765a8a54[arg1 << 240].field_128 != sub_765a8a54[arg1 << 240].field_0:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg4.length) + 229 len 31]
                            if not arg3:
                                if sub_765a8a54[arg1 << 240].field_0 * mem[162] / 10^10 < sub_765a8a54[arg1 << 240].field_0 * mem[162] / 10^10:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[ceil32(arg4.length) + 128] = sub_765a8a54[arg1 << 240].field_0 * mem[162] / 10^10
                            else:
                                if sub_765a8a54[arg1 << 240].field_0 * sub_23161ff8[arg1 << 240][arg2 << 240].field_192 * sub_765a8a54[arg1 << 240].field_128 / 10^10 * arg3 / arg3 != sub_765a8a54[arg1 << 240].field_0 * sub_23161ff8[arg1 << 240][arg2 << 240].field_192 * sub_765a8a54[arg1 << 240].field_128 / 10^10:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg4.length) + 229 len 31]
                                if (sub_765a8a54[arg1 << 240].field_0 * sub_23161ff8[arg1 << 240][arg2 << 240].field_192 * sub_765a8a54[arg1 << 240].field_128 / 10^10 * arg3) + (sub_765a8a54[arg1 << 240].field_0 * mem[162] / 10^10) < sub_765a8a54[arg1 << 240].field_0 * mem[162] / 10^10:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[ceil32(arg4.length) + 128] = (sub_765a8a54[arg1 << 240].field_0 * sub_23161ff8[arg1 << 240][arg2 << 240].field_192 * sub_765a8a54[arg1 << 240].field_128 / 10^10 * arg3) + (sub_765a8a54[arg1 << 240].field_0 * mem[162] / 10^10)
            else:
                if (mem[130] * sub_765a8a54[arg1 << 240].field_128) + (sub_23161ff8[arg1 << 240][arg2 << 240].field_128 * sub_765a8a54[arg1 << 240].field_128) / sub_765a8a54[arg1 << 240].field_128 != mem[130] + sub_23161ff8[arg1 << 240][arg2 << 240].field_128:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg4.length) + 229 len 31]
                if (mem[130] * sub_765a8a54[arg1 << 240].field_128) + (sub_23161ff8[arg1 << 240][arg2 << 240].field_128 * sub_765a8a54[arg1 << 240].field_128) + mem[162] < mem[162]:
                    revert with 0, 'SafeMath: addition overflow'
                if not (mem[130] * sub_765a8a54[arg1 << 240].field_128) + (sub_23161ff8[arg1 << 240][arg2 << 240].field_128 * sub_765a8a54[arg1 << 240].field_128) + mem[162]:
                    if not sub_765a8a54[arg1 << 240].field_128:
                        if arg3:
                            if 0 / arg3:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg4.length) + 229 len 31]
                        mem[ceil32(arg4.length) + 128] = 0
                    else:
                        if sub_23161ff8[arg1 << 240][arg2 << 240].field_192 * sub_765a8a54[arg1 << 240].field_128 / sub_765a8a54[arg1 << 240].field_128 != sub_23161ff8[arg1 << 240][arg2 << 240].field_192:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg4.length) + 229 len 31]
                        if not sub_23161ff8[arg1 << 240][arg2 << 240].field_192 * sub_765a8a54[arg1 << 240].field_128:
                            if arg3:
                                if 0 / arg3:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg4.length) + 229 len 31]
                            mem[ceil32(arg4.length) + 128] = 0
                        else:
                            if sub_765a8a54[arg1 << 240].field_0 * sub_23161ff8[arg1 << 240][arg2 << 240].field_192 * sub_765a8a54[arg1 << 240].field_128 / sub_23161ff8[arg1 << 240][arg2 << 240].field_192 * sub_765a8a54[arg1 << 240].field_128 != sub_765a8a54[arg1 << 240].field_0:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg4.length) + 229 len 31]
                            if not arg3:
                                mem[ceil32(arg4.length) + 128] = 0
                            else:
                                if sub_765a8a54[arg1 << 240].field_0 * sub_23161ff8[arg1 << 240][arg2 << 240].field_192 * sub_765a8a54[arg1 << 240].field_128 / 10^10 * arg3 / arg3 != sub_765a8a54[arg1 << 240].field_0 * sub_23161ff8[arg1 << 240][arg2 << 240].field_192 * sub_765a8a54[arg1 << 240].field_128 / 10^10:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg4.length) + 229 len 31]
                                if sub_765a8a54[arg1 << 240].field_0 * sub_23161ff8[arg1 << 240][arg2 << 240].field_192 * sub_765a8a54[arg1 << 240].field_128 / 10^10 * arg3 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[ceil32(arg4.length) + 128] = sub_765a8a54[arg1 << 240].field_0 * sub_23161ff8[arg1 << 240][arg2 << 240].field_192 * sub_765a8a54[arg1 << 240].field_128 / 10^10 * arg3
                else:
                    if (mem[130] * sub_765a8a54[arg1 << 240].field_128 * sub_765a8a54[arg1 << 240].field_0) + (sub_23161ff8[arg1 << 240][arg2 << 240].field_128 * sub_765a8a54[arg1 << 240].field_128 * sub_765a8a54[arg1 << 240].field_0) + (mem[162] * sub_765a8a54[arg1 << 240].field_0) / (mem[130] * sub_765a8a54[arg1 << 240].field_128) + (sub_23161ff8[arg1 << 240][arg2 << 240].field_128 * sub_765a8a54[arg1 << 240].field_128) + mem[162] != sub_765a8a54[arg1 << 240].field_0:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg4.length) + 229 len 31]
                    if not sub_765a8a54[arg1 << 240].field_128:
                        if arg3:
                            if 0 / arg3:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg4.length) + 229 len 31]
                        if (mem[130] * sub_765a8a54[arg1 << 240].field_128 * sub_765a8a54[arg1 << 240].field_0) + (sub_23161ff8[arg1 << 240][arg2 << 240].field_128 * sub_765a8a54[arg1 << 240].field_128 * sub_765a8a54[arg1 << 240].field_0) + (mem[162] * sub_765a8a54[arg1 << 240].field_0) / 10^10 < (mem[130] * sub_765a8a54[arg1 << 240].field_128 * sub_765a8a54[arg1 << 240].field_0) + (sub_23161ff8[arg1 << 240][arg2 << 240].field_128 * sub_765a8a54[arg1 << 240].field_128 * sub_765a8a54[arg1 << 240].field_0) + (mem[162] * sub_765a8a54[arg1 << 240].field_0) / 10^10:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[ceil32(arg4.length) + 128] = (mem[130] * sub_765a8a54[arg1 << 240].field_128 * sub_765a8a54[arg1 << 240].field_0) + (sub_23161ff8[arg1 << 240][arg2 << 240].field_128 * sub_765a8a54[arg1 << 240].field_128 * sub_765a8a54[arg1 << 240].field_0) + (mem[162] * sub_765a8a54[arg1 << 240].field_0) / 10^10
                    else:
                        if sub_23161ff8[arg1 << 240][arg2 << 240].field_192 * sub_765a8a54[arg1 << 240].field_128 / sub_765a8a54[arg1 << 240].field_128 != sub_23161ff8[arg1 << 240][arg2 << 240].field_192:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg4.length) + 229 len 31]
                        if not sub_23161ff8[arg1 << 240][arg2 << 240].field_192 * sub_765a8a54[arg1 << 240].field_128:
                            if arg3:
                                if 0 / arg3:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg4.length) + 229 len 31]
                            if (mem[130] * sub_765a8a54[arg1 << 240].field_128 * sub_765a8a54[arg1 << 240].field_0) + (sub_23161ff8[arg1 << 240][arg2 << 240].field_128 * sub_765a8a54[arg1 << 240].field_128 * sub_765a8a54[arg1 << 240].field_0) + (mem[162] * sub_765a8a54[arg1 << 240].field_0) / 10^10 < (mem[130] * sub_765a8a54[arg1 << 240].field_128 * sub_765a8a54[arg1 << 240].field_0) + (sub_23161ff8[arg1 << 240][arg2 << 240].field_128 * sub_765a8a54[arg1 << 240].field_128 * sub_765a8a54[arg1 << 240].field_0) + (mem[162] * sub_765a8a54[arg1 << 240].field_0) / 10^10:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[ceil32(arg4.length) + 128] = (mem[130] * sub_765a8a54[arg1 << 240].field_128 * sub_765a8a54[arg1 << 240].field_0) + (sub_23161ff8[arg1 << 240][arg2 << 240].field_128 * sub_765a8a54[arg1 << 240].field_128 * sub_765a8a54[arg1 << 240].field_0) + (mem[162] * sub_765a8a54[arg1 << 240].field_0) / 10^10
                        else:
                            if sub_765a8a54[arg1 << 240].field_0 * sub_23161ff8[arg1 << 240][arg2 << 240].field_192 * sub_765a8a54[arg1 << 240].field_128 / sub_23161ff8[arg1 << 240][arg2 << 240].field_192 * sub_765a8a54[arg1 << 240].field_128 != sub_765a8a54[arg1 << 240].field_0:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg4.length) + 229 len 31]
                            if not arg3:
                                if (mem[130] * sub_765a8a54[arg1 << 240].field_128 * sub_765a8a54[arg1 << 240].field_0) + (sub_23161ff8[arg1 << 240][arg2 << 240].field_128 * sub_765a8a54[arg1 << 240].field_128 * sub_765a8a54[arg1 << 240].field_0) + (mem[162] * sub_765a8a54[arg1 << 240].field_0) / 10^10 < (mem[130] * sub_765a8a54[arg1 << 240].field_128 * sub_765a8a54[arg1 << 240].field_0) + (sub_23161ff8[arg1 << 240][arg2 << 240].field_128 * sub_765a8a54[arg1 << 240].field_128 * sub_765a8a54[arg1 << 240].field_0) + (mem[162] * sub_765a8a54[arg1 << 240].field_0) / 10^10:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[ceil32(arg4.length) + 128] = (mem[130] * sub_765a8a54[arg1 << 240].field_128 * sub_765a8a54[arg1 << 240].field_0) + (sub_23161ff8[arg1 << 240][arg2 << 240].field_128 * sub_765a8a54[arg1 << 240].field_128 * sub_765a8a54[arg1 << 240].field_0) + (mem[162] * sub_765a8a54[arg1 << 240].field_0) / 10^10
                            else:
                                if sub_765a8a54[arg1 << 240].field_0 * sub_23161ff8[arg1 << 240][arg2 << 240].field_192 * sub_765a8a54[arg1 << 240].field_128 / 10^10 * arg3 / arg3 != sub_765a8a54[arg1 << 240].field_0 * sub_23161ff8[arg1 << 240][arg2 << 240].field_192 * sub_765a8a54[arg1 << 240].field_128 / 10^10:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg4.length) + 229 len 31]
                                if (sub_765a8a54[arg1 << 240].field_0 * sub_23161ff8[arg1 << 240][arg2 << 240].field_192 * sub_765a8a54[arg1 << 240].field_128 / 10^10 * arg3) + ((mem[130] * sub_765a8a54[arg1 << 240].field_128 * sub_765a8a54[arg1 << 240].field_0) + (sub_23161ff8[arg1 << 240][arg2 << 240].field_128 * sub_765a8a54[arg1 << 240].field_128 * sub_765a8a54[arg1 << 240].field_0) + (mem[162] * sub_765a8a54[arg1 << 240].field_0) / 10^10) < (mem[130] * sub_765a8a54[arg1 << 240].field_128 * sub_765a8a54[arg1 << 240].field_0) + (sub_23161ff8[arg1 << 240][arg2 << 240].field_128 * sub_765a8a54[arg1 << 240].field_128 * sub_765a8a54[arg1 << 240].field_0) + (mem[162] * sub_765a8a54[arg1 << 240].field_0) / 10^10:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[ceil32(arg4.length) + 128] = (sub_765a8a54[arg1 << 240].field_0 * sub_23161ff8[arg1 << 240][arg2 << 240].field_192 * sub_765a8a54[arg1 << 240].field_128 / 10^10 * arg3) + ((mem[130] * sub_765a8a54[arg1 << 240].field_128 * sub_765a8a54[arg1 << 240].field_0) + (sub_23161ff8[arg1 << 240][arg2 << 240].field_128 * sub_765a8a54[arg1 << 240].field_128 * sub_765a8a54[arg1 << 240].field_0) + (mem[162] * sub_765a8a54[arg1 << 240].field_0) / 10^10)
    else:
        if mem[128 len 2] != 2:
            revert with 0, 'Relayer: unsupported txType'
        if mem[162] > sub_23161ff8[arg1 << 240][arg2 << 240].field_0:
            revert with 0, 'Relayer: dstNativeAmt too large'
        if mem[162] < 0:
            revert with 0, 'SafeMath: addition overflow'
        if mem[130] + sub_23161ff8[arg1 << 240][arg2 << 240].field_128 < sub_23161ff8[arg1 << 240][arg2 << 240].field_128:
            revert with 0, 'SafeMath: addition overflow'
        if not sub_765a8a54[arg1 << 240].field_128:
            if mem[162] < mem[162]:
                revert with 0, 'SafeMath: addition overflow'
            if not mem[162]:
                if not sub_765a8a54[arg1 << 240].field_128:
                    if arg3:
                        if 0 / arg3:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg4.length) + 229 len 31]
                    mem[ceil32(arg4.length) + 128] = 0
                else:
                    if sub_23161ff8[arg1 << 240][arg2 << 240].field_192 * sub_765a8a54[arg1 << 240].field_128 / sub_765a8a54[arg1 << 240].field_128 != sub_23161ff8[arg1 << 240][arg2 << 240].field_192:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg4.length) + 229 len 31]
                    if not sub_23161ff8[arg1 << 240][arg2 << 240].field_192 * sub_765a8a54[arg1 << 240].field_128:
                        if arg3:
                            if 0 / arg3:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg4.length) + 229 len 31]
                        mem[ceil32(arg4.length) + 128] = 0
                    else:
                        if sub_765a8a54[arg1 << 240].field_0 * sub_23161ff8[arg1 << 240][arg2 << 240].field_192 * sub_765a8a54[arg1 << 240].field_128 / sub_23161ff8[arg1 << 240][arg2 << 240].field_192 * sub_765a8a54[arg1 << 240].field_128 != sub_765a8a54[arg1 << 240].field_0:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg4.length) + 229 len 31]
                        if not arg3:
                            mem[ceil32(arg4.length) + 128] = 0
                        else:
                            if sub_765a8a54[arg1 << 240].field_0 * sub_23161ff8[arg1 << 240][arg2 << 240].field_192 * sub_765a8a54[arg1 << 240].field_128 / 10^10 * arg3 / arg3 != sub_765a8a54[arg1 << 240].field_0 * sub_23161ff8[arg1 << 240][arg2 << 240].field_192 * sub_765a8a54[arg1 << 240].field_128 / 10^10:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg4.length) + 229 len 31]
                            if sub_765a8a54[arg1 << 240].field_0 * sub_23161ff8[arg1 << 240][arg2 << 240].field_192 * sub_765a8a54[arg1 << 240].field_128 / 10^10 * arg3 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[ceil32(arg4.length) + 128] = sub_765a8a54[arg1 << 240].field_0 * sub_23161ff8[arg1 << 240][arg2 << 240].field_192 * sub_765a8a54[arg1 << 240].field_128 / 10^10 * arg3
            else:
                if sub_765a8a54[arg1 << 240].field_0 * mem[162] / mem[162] != sub_765a8a54[arg1 << 240].field_0:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg4.length) + 229 len 31]
                if not sub_765a8a54[arg1 << 240].field_128:
                    if arg3:
                        if 0 / arg3:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg4.length) + 229 len 31]
                    if sub_765a8a54[arg1 << 240].field_0 * mem[162] / 10^10 < sub_765a8a54[arg1 << 240].field_0 * mem[162] / 10^10:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[ceil32(arg4.length) + 128] = sub_765a8a54[arg1 << 240].field_0 * mem[162] / 10^10
                else:
                    if sub_23161ff8[arg1 << 240][arg2 << 240].field_192 * sub_765a8a54[arg1 << 240].field_128 / sub_765a8a54[arg1 << 240].field_128 != sub_23161ff8[arg1 << 240][arg2 << 240].field_192:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg4.length) + 229 len 31]
                    if not sub_23161ff8[arg1 << 240][arg2 << 240].field_192 * sub_765a8a54[arg1 << 240].field_128:
                        if arg3:
                            if 0 / arg3:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg4.length) + 229 len 31]
                        if sub_765a8a54[arg1 << 240].field_0 * mem[162] / 10^10 < sub_765a8a54[arg1 << 240].field_0 * mem[162] / 10^10:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[ceil32(arg4.length) + 128] = sub_765a8a54[arg1 << 240].field_0 * mem[162] / 10^10
                    else:
                        if sub_765a8a54[arg1 << 240].field_0 * sub_23161ff8[arg1 << 240][arg2 << 240].field_192 * sub_765a8a54[arg1 << 240].field_128 / sub_23161ff8[arg1 << 240][arg2 << 240].field_192 * sub_765a8a54[arg1 << 240].field_128 != sub_765a8a54[arg1 << 240].field_0:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg4.length) + 229 len 31]
                        if not arg3:
                            if sub_765a8a54[arg1 << 240].field_0 * mem[162] / 10^10 < sub_765a8a54[arg1 << 240].field_0 * mem[162] / 10^10:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[ceil32(arg4.length) + 128] = sub_765a8a54[arg1 << 240].field_0 * mem[162] / 10^10
                        else:
                            if sub_765a8a54[arg1 << 240].field_0 * sub_23161ff8[arg1 << 240][arg2 << 240].field_192 * sub_765a8a54[arg1 << 240].field_128 / 10^10 * arg3 / arg3 != sub_765a8a54[arg1 << 240].field_0 * sub_23161ff8[arg1 << 240][arg2 << 240].field_192 * sub_765a8a54[arg1 << 240].field_128 / 10^10:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg4.length) + 229 len 31]
                            if (sub_765a8a54[arg1 << 240].field_0 * sub_23161ff8[arg1 << 240][arg2 << 240].field_192 * sub_765a8a54[arg1 << 240].field_128 / 10^10 * arg3) + (sub_765a8a54[arg1 << 240].field_0 * mem[162] / 10^10) < sub_765a8a54[arg1 << 240].field_0 * mem[162] / 10^10:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[ceil32(arg4.length) + 128] = (sub_765a8a54[arg1 << 240].field_0 * sub_23161ff8[arg1 << 240][arg2 << 240].field_192 * sub_765a8a54[arg1 << 240].field_128 / 10^10 * arg3) + (sub_765a8a54[arg1 << 240].field_0 * mem[162] / 10^10)
        else:
            if (mem[130] * sub_765a8a54[arg1 << 240].field_128) + (sub_23161ff8[arg1 << 240][arg2 << 240].field_128 * sub_765a8a54[arg1 << 240].field_128) / sub_765a8a54[arg1 << 240].field_128 != mem[130] + sub_23161ff8[arg1 << 240][arg2 << 240].field_128:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg4.length) + 229 len 31]
            if (mem[130] * sub_765a8a54[arg1 << 240].field_128) + (sub_23161ff8[arg1 << 240][arg2 << 240].field_128 * sub_765a8a54[arg1 << 240].field_128) + mem[162] < mem[162]:
                revert with 0, 'SafeMath: addition overflow'
            if not (mem[130] * sub_765a8a54[arg1 << 240].field_128) + (sub_23161ff8[arg1 << 240][arg2 << 240].field_128 * sub_765a8a54[arg1 << 240].field_128) + mem[162]:
                if not sub_765a8a54[arg1 << 240].field_128:
                    if arg3:
                        if 0 / arg3:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg4.length) + 229 len 31]
                    mem[ceil32(arg4.length) + 128] = 0
                else:
                    if sub_23161ff8[arg1 << 240][arg2 << 240].field_192 * sub_765a8a54[arg1 << 240].field_128 / sub_765a8a54[arg1 << 240].field_128 != sub_23161ff8[arg1 << 240][arg2 << 240].field_192:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg4.length) + 229 len 31]
                    if not sub_23161ff8[arg1 << 240][arg2 << 240].field_192 * sub_765a8a54[arg1 << 240].field_128:
                        if arg3:
                            if 0 / arg3:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg4.length) + 229 len 31]
                        mem[ceil32(arg4.length) + 128] = 0
                    else:
                        if sub_765a8a54[arg1 << 240].field_0 * sub_23161ff8[arg1 << 240][arg2 << 240].field_192 * sub_765a8a54[arg1 << 240].field_128 / sub_23161ff8[arg1 << 240][arg2 << 240].field_192 * sub_765a8a54[arg1 << 240].field_128 != sub_765a8a54[arg1 << 240].field_0:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg4.length) + 229 len 31]
                        if not arg3:
                            mem[ceil32(arg4.length) + 128] = 0
                        else:
                            if sub_765a8a54[arg1 << 240].field_0 * sub_23161ff8[arg1 << 240][arg2 << 240].field_192 * sub_765a8a54[arg1 << 240].field_128 / 10^10 * arg3 / arg3 != sub_765a8a54[arg1 << 240].field_0 * sub_23161ff8[arg1 << 240][arg2 << 240].field_192 * sub_765a8a54[arg1 << 240].field_128 / 10^10:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg4.length) + 229 len 31]
                            if sub_765a8a54[arg1 << 240].field_0 * sub_23161ff8[arg1 << 240][arg2 << 240].field_192 * sub_765a8a54[arg1 << 240].field_128 / 10^10 * arg3 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[ceil32(arg4.length) + 128] = sub_765a8a54[arg1 << 240].field_0 * sub_23161ff8[arg1 << 240][arg2 << 240].field_192 * sub_765a8a54[arg1 << 240].field_128 / 10^10 * arg3
            else:
                if (mem[130] * sub_765a8a54[arg1 << 240].field_128 * sub_765a8a54[arg1 << 240].field_0) + (sub_23161ff8[arg1 << 240][arg2 << 240].field_128 * sub_765a8a54[arg1 << 240].field_128 * sub_765a8a54[arg1 << 240].field_0) + (mem[162] * sub_765a8a54[arg1 << 240].field_0) / (mem[130] * sub_765a8a54[arg1 << 240].field_128) + (sub_23161ff8[arg1 << 240][arg2 << 240].field_128 * sub_765a8a54[arg1 << 240].field_128) + mem[162] != sub_765a8a54[arg1 << 240].field_0:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg4.length) + 229 len 31]
                if not sub_765a8a54[arg1 << 240].field_128:
                    if arg3:
                        if 0 / arg3:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg4.length) + 229 len 31]
                    if (mem[130] * sub_765a8a54[arg1 << 240].field_128 * sub_765a8a54[arg1 << 240].field_0) + (sub_23161ff8[arg1 << 240][arg2 << 240].field_128 * sub_765a8a54[arg1 << 240].field_128 * sub_765a8a54[arg1 << 240].field_0) + (mem[162] * sub_765a8a54[arg1 << 240].field_0) / 10^10 < (mem[130] * sub_765a8a54[arg1 << 240].field_128 * sub_765a8a54[arg1 << 240].field_0) + (sub_23161ff8[arg1 << 240][arg2 << 240].field_128 * sub_765a8a54[arg1 << 240].field_128 * sub_765a8a54[arg1 << 240].field_0) + (mem[162] * sub_765a8a54[arg1 << 240].field_0) / 10^10:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[ceil32(arg4.length) + 128] = (mem[130] * sub_765a8a54[arg1 << 240].field_128 * sub_765a8a54[arg1 << 240].field_0) + (sub_23161ff8[arg1 << 240][arg2 << 240].field_128 * sub_765a8a54[arg1 << 240].field_128 * sub_765a8a54[arg1 << 240].field_0) + (mem[162] * sub_765a8a54[arg1 << 240].field_0) / 10^10
                else:
                    if sub_23161ff8[arg1 << 240][arg2 << 240].field_192 * sub_765a8a54[arg1 << 240].field_128 / sub_765a8a54[arg1 << 240].field_128 != sub_23161ff8[arg1 << 240][arg2 << 240].field_192:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg4.length) + 229 len 31]
                    if not sub_23161ff8[arg1 << 240][arg2 << 240].field_192 * sub_765a8a54[arg1 << 240].field_128:
                        if arg3:
                            if 0 / arg3:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg4.length) + 229 len 31]
                        if (mem[130] * sub_765a8a54[arg1 << 240].field_128 * sub_765a8a54[arg1 << 240].field_0) + (sub_23161ff8[arg1 << 240][arg2 << 240].field_128 * sub_765a8a54[arg1 << 240].field_128 * sub_765a8a54[arg1 << 240].field_0) + (mem[162] * sub_765a8a54[arg1 << 240].field_0) / 10^10 < (mem[130] * sub_765a8a54[arg1 << 240].field_128 * sub_765a8a54[arg1 << 240].field_0) + (sub_23161ff8[arg1 << 240][arg2 << 240].field_128 * sub_765a8a54[arg1 << 240].field_128 * sub_765a8a54[arg1 << 240].field_0) + (mem[162] * sub_765a8a54[arg1 << 240].field_0) / 10^10:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[ceil32(arg4.length) + 128] = (mem[130] * sub_765a8a54[arg1 << 240].field_128 * sub_765a8a54[arg1 << 240].field_0) + (sub_23161ff8[arg1 << 240][arg2 << 240].field_128 * sub_765a8a54[arg1 << 240].field_128 * sub_765a8a54[arg1 << 240].field_0) + (mem[162] * sub_765a8a54[arg1 << 240].field_0) / 10^10
                    else:
                        if sub_765a8a54[arg1 << 240].field_0 * sub_23161ff8[arg1 << 240][arg2 << 240].field_192 * sub_765a8a54[arg1 << 240].field_128 / sub_23161ff8[arg1 << 240][arg2 << 240].field_192 * sub_765a8a54[arg1 << 240].field_128 != sub_765a8a54[arg1 << 240].field_0:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg4.length) + 229 len 31]
                        if not arg3:
                            if (mem[130] * sub_765a8a54[arg1 << 240].field_128 * sub_765a8a54[arg1 << 240].field_0) + (sub_23161ff8[arg1 << 240][arg2 << 240].field_128 * sub_765a8a54[arg1 << 240].field_128 * sub_765a8a54[arg1 << 240].field_0) + (mem[162] * sub_765a8a54[arg1 << 240].field_0) / 10^10 < (mem[130] * sub_765a8a54[arg1 << 240].field_128 * sub_765a8a54[arg1 << 240].field_0) + (sub_23161ff8[arg1 << 240][arg2 << 240].field_128 * sub_765a8a54[arg1 << 240].field_128 * sub_765a8a54[arg1 << 240].field_0) + (mem[162] * sub_765a8a54[arg1 << 240].field_0) / 10^10:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[ceil32(arg4.length) + 128] = (mem[130] * sub_765a8a54[arg1 << 240].field_128 * sub_765a8a54[arg1 << 240].field_0) + (sub_23161ff8[arg1 << 240][arg2 << 240].field_128 * sub_765a8a54[arg1 << 240].field_128 * sub_765a8a54[arg1 << 240].field_0) + (mem[162] * sub_765a8a54[arg1 << 240].field_0) / 10^10
                        else:
                            if sub_765a8a54[arg1 << 240].field_0 * sub_23161ff8[arg1 << 240][arg2 << 240].field_192 * sub_765a8a54[arg1 << 240].field_128 / 10^10 * arg3 / arg3 != sub_765a8a54[arg1 << 240].field_0 * sub_23161ff8[arg1 << 240][arg2 << 240].field_192 * sub_765a8a54[arg1 << 240].field_128 / 10^10:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg4.length) + 229 len 31]
                            if (sub_765a8a54[arg1 << 240].field_0 * sub_23161ff8[arg1 << 240][arg2 << 240].field_192 * sub_765a8a54[arg1 << 240].field_128 / 10^10 * arg3) + ((mem[130] * sub_765a8a54[arg1 << 240].field_128 * sub_765a8a54[arg1 << 240].field_0) + (sub_23161ff8[arg1 << 240][arg2 << 240].field_128 * sub_765a8a54[arg1 << 240].field_128 * sub_765a8a54[arg1 << 240].field_0) + (mem[162] * sub_765a8a54[arg1 << 240].field_0) / 10^10) < (mem[130] * sub_765a8a54[arg1 << 240].field_128 * sub_765a8a54[arg1 << 240].field_0) + (sub_23161ff8[arg1 << 240][arg2 << 240].field_128 * sub_765a8a54[arg1 << 240].field_128 * sub_765a8a54[arg1 << 240].field_0) + (mem[162] * sub_765a8a54[arg1 << 240].field_0) / 10^10:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[ceil32(arg4.length) + 128] = (sub_765a8a54[arg1 << 240].field_0 * sub_23161ff8[arg1 << 240][arg2 << 240].field_192 * sub_765a8a54[arg1 << 240].field_128 / 10^10 * arg3) + ((mem[130] * sub_765a8a54[arg1 << 240].field_128 * sub_765a8a54[arg1 << 240].field_0) + (sub_23161ff8[arg1 << 240][arg2 << 240].field_128 * sub_765a8a54[arg1 << 240].field_128 * sub_765a8a54[arg1 << 240].field_0) + (mem[162] * sub_765a8a54[arg1 << 240].field_0) / 10^10)
    return Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
}



}
