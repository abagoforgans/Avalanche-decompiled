contract main {




// =====================  Runtime code  =====================


#
#  - sub_26759de3(?)
#  - recoverERC20(address arg1, uint256 arg2)
#  - sub_b7d253ab(?)
#  - _fallback()
#
uint256 stor0;
address owner;
address transferTokenAddress;
address reservoirAddress;
uint256 maxTransfer;
uint8 sub_e7c4393e; offset 32
uint32 sub_37547b2f;
mapping of uint8 stor6;
uint32 chainId;
uint256 sub_86a95468;
mapping of uint256 sub_11d7e46b;
mapping of uint256 sub_26eb8ccd;
address tokenAddress;
uint32 sub_ce85464c; offset 160
address routerAddress;
uint256 sub_6c9361d4;
uint256 sub_bcb5dd26;
mapping of struct transfers;
uint256 transfersCount;
mapping of uint256 sub_235a96d2;
mapping of uint256 sub_48a17bca;
mapping of uint256 sub_beb8e437;
mapping of uint256 sub_b89ec11a;
mapping of uint32 sub_7144d96e;
uint256 sub_b96671e3;
mapping of struct sub_3e77d5df;
mapping of uint256 sub_5d1561f7;
uint256 releasesCount;
mapping of uint256 sub_e50235b8;
mapping of struct sub_565d5e98;
mapping of uint256 sub_c75c8089;
mapping of struct sub_c78d1c4a;
mapping of uint8 stor30;
mapping of uint8 stor31;

function sub_11d7e46b(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint32(arg1)
    return sub_11d7e46b[arg1]
}

function reservoir() {
    return reservoirAddress
}

function transfersCount() {
    return transfersCount
}

function sub_235a96d2(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_235a96d2[arg1]
}

function sub_248514dd(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint32(arg1)
    return bool(stor6[arg1])
}

function sub_26eb8ccd(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint32(arg1)
    return sub_26eb8ccd[arg1]
}

function routerAddress() {
    return routerAddress
}

function sub_37547b2f(?) {
    return sub_37547b2f
}

function sub_3e77d5df(?) {
    require calldata.size - 4 >= 64
    return sub_3e77d5df[arg1][arg2].field_0, 
           sub_3e77d5df[arg1][arg2].field_0,
           sub_3e77d5df[arg1][arg2].field_256,
           sub_3e77d5df[arg1][arg2].field_512,
           sub_3e77d5df[arg1][arg2].field_640
}

function sub_48a17bca(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    return sub_48a17bca[arg1][arg2]
}

function sub_502a1e26(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor31[arg1])
}

function sub_565d5e98(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    return sub_565d5e98[arg1][arg2].field_0, sub_565d5e98[arg1][arg2].field_32
}

function sub_5d1561f7(?) {
    require calldata.size - 4 >= 32
    return sub_5d1561f7[arg1]
}

function sub_6c9361d4(?) {
    return sub_6c9361d4
}

function sub_7144d96e(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_7144d96e[arg1]
}

function sub_77f5c5d4(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor30[arg1])
}

function transferToken() {
    return transferTokenAddress
}

function sub_8508aa34(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if transfers[stor18[address(arg1)][arg2]].field_896 >= 3:
        revert with 0, 33
    return transfers[stor18[address(arg1)][arg2]].field_0, 
           transfers[stor18[address(arg1)][arg2]].field_0,
           transfers[stor18[address(arg1)][arg2]].field_0,
           transfers[stor18[address(arg1)][arg2]].field_256,
           transfers[stor18[address(arg1)][arg2]].field_512,
           transfers[stor18[address(arg1)][arg2]].field_512,
           transfers[stor18[address(arg1)][arg2]].field_768,
           transfers[stor18[address(arg1)][arg2]].field_768,
           transfers[stor18[address(arg1)][arg2]].field_1024
}

function sub_86a95468(?) {
    return sub_86a95468
}

function owner() {
    return owner
}

function transfers(uint256 arg1) {
    require calldata.size - 4 >= 32
    if transfers[arg1].field_896 >= 3:
        revert with 0, 33
    return transfers[arg1].field_0, 
           transfers[arg1].field_0,
           transfers[arg1].field_0,
           transfers[arg1].field_256,
           transfers[arg1].field_512,
           transfers[arg1].field_512,
           transfers[arg1].field_768,
           transfers[arg1].field_768,
           transfers[arg1].field_1024
}

function chainId() {
    return chainId
}

function tokenAddress() {
    return tokenAddress
}

function sub_b89ec11a(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    return sub_b89ec11a[arg1][arg2]
}

function sub_b96671e3(?) {
    return sub_b96671e3
}

function sub_bcb5dd26(?) {
    return sub_bcb5dd26
}

function sub_beb8e437(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_beb8e437[arg1]
}

function sub_c75c8089(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_c75c8089[arg1]
}

function sub_c78d1c4a(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    return sub_c78d1c4a[arg1][arg2].field_0, sub_c78d1c4a[arg1][arg2].field_32
}

function sub_ce85464c(?) {
    return sub_ce85464c
}

function releasesCount() {
    return releasesCount
}

function sub_e50235b8(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_e50235b8[arg1]
}

function sub_e7c4393e(?) {
    return sub_e7c4393e
}

function maxTransfer() {
    return maxTransfer
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_863e5fd6(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    sub_86a95468 = arg1
    emit 0x93eaea7d: arg1
}

function sub_94de655e(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    sub_bcb5dd26 = arg1
    emit 0x6014f8fc: arg1
}

function setMaxTransfer(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    maxTransfer = arg1
    emit 0x18f94ea7: arg1
}

function sub_0651493c(?) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    transfers[arg1].field_1024 = arg2
    emit 0x99b874c5: arg1, arg2
}

function sub_32ea039a(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint8(arg1)
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    sub_e7c4393e = uint8(arg1)
    emit 0x3b0e24ae: uint8(arg1)
}

function sub_8241f929(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint32(arg1)
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    sub_37547b2f = uint32(arg1)
    emit 0x2978d680: uint32(arg1)
}

function sub_58be9f38(?) {
    require calldata.size - 4 >= 96
    require arg1 == uint32(arg1)
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    sub_11d7e46b[arg1 << 224] = arg2
    sub_26eb8ccd[arg1 << 224] = arg3
    emit 0x36478360: arg1 << 224, arg2, arg3
}

function sub_66fc00a4(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == uint32(arg2)
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    routerAddress = address(arg1)
    sub_ce85464c = uint32(arg2)
    sub_6c9361d4 = arg3
    emit 0x474ae60c: arg2 << 224, arg3, address(arg1)
}

function pause() {
    if not stor0 - 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if not stor31[msg.sender]:
        if owner != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'Bifrost::pause: can only be called from owner or enabled pauser address!'
    maxTransfer = 0
    emit 0x18f94ea7: 0
    stor0 = 1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function sub_8fbbb557(?) {
    require calldata.size - 4 >= 64
    require arg1 == uint32(arg1)
    require arg2 == bool(arg2)
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    stor6[arg1 << 224] = uint8(bool(arg2))
    if not arg2:
        if stor6[arg1 << 224]:
            emit 0xceb77835: uint32(arg1)
    else:
        if not stor6[arg1 << 224]:
            emit 0xb4b5da88: uint32(arg1)
        else:
            if not arg2:
                if stor6[arg1 << 224]:
                    emit 0xceb77835: uint32(arg1)
}

function sub_a5664928(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    stor30[address(arg1)] = uint8(bool(arg2))
    if not arg2:
        if stor30[address(arg1)]:
            emit 0x1aa635c5: address(arg1)
    else:
        if not stor30[address(arg1)]:
            emit 0x2ac8b257: address(arg1)
        else:
            if not arg2:
                if stor30[address(arg1)]:
                    emit 0x1aa635c5: address(arg1)
}

function sub_f588c009(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    stor31[address(arg1)] = uint8(bool(arg2))
    if not arg2:
        if stor31[address(arg1)]:
            emit 0x4fc4ad32: address(arg1)
    else:
        if not stor31[address(arg1)]:
            emit 0x4d0f17e6: address(arg1)
        else:
            if not arg2:
                if stor31[address(arg1)]:
                    emit 0x4fc4ad32: address(arg1)
}

function sub_971ba465(?) {
    if transfersCount < 0x8000000000000000000000000000000000000000000000000000000000000001:
        revert with 0, 17
    idx = transfersCount - 1
    while idx >= 0:
        mem[0] = idx
        mem[32] = 15
        if block.number < transfers[idx].field_768:
            revert with 0, 17
        if block.number - transfers[idx].field_768 < sub_e7c4393e:
            if not idx - 0x8000000000000000000000000000000000000000000000000000000000000000:
                revert with 0, 17
            idx = idx - 1
            continue 
        if 1 > !idx:
            revert with 0, 17
        return (idx + 1)
    return 0
}

function sub_f6773c10(?) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    if arg1 >= transfersCount:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Bifrost::completeTransfer: invalid transfer id!'
    if transfers[arg1].field_896 > 2:
        revert with 0, 33
    if transfers[arg1].field_896:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Bifrost::completeTransfer: transfer must be initiated!'
    transfers[arg1].field_896 = 1
    transfers[arg1].field_1024 = arg2
    emit 0x4abf3db6: arg1, arg2
}

function sub_faeb4163(?) {
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    call transferTokenAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args routerAddress, sub_bcb5dd26
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    call transferTokenAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args reservoirAddress, sub_bcb5dd26
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function recoverETH(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    if eth.balance(this.address) < arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Bifrost::recoverETH: native balance must be equal to or higher than the amount to recover!'
    call msg.sender with:
       value arg1 wei
         gas gas_remaining wei
    if not return_data.size:
        if not ext_call.success:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Bifrost::recoverETH: sending failed!'
    else:
        if not ext_call.success:
            revert with 0, 'Bifrost::recoverETH: sending failed!'
    ('bool', 'ext_call.success')
    emit 0xfc3b2917: arg1
}

function sub_7d6b79e7(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    if arg1 >= transfersCount:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Bifrost::abortTransfer: invalid transfer id!'
    if transfers[arg1].field_896 > 2:
        revert with 0, 33
    if not transfers[arg1].field_896 - 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Bifrost::abortTransfer: cannot abort completed transfer!'
    if transfers[arg1].field_896 > 2:
        revert with 0, 33
    if not transfers[arg1].field_896 - 2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Bifrost::abortTransfer: cannot abort already aborted transfer!'
    transfers[arg1].field_896 = 2
    transfers[arg1].field_1024 = 0
    require ext_code.size(reservoirAddress)
    call reservoirAddress.0x106e6290 with:
         gas gas_remaining wei
        args transfers[arg1].field_0, transfers[arg1].field_512, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x8a987b1b: arg1
}

function weth() {
    if not -chainId + 43114:
        staticcall routerAddress.WAVAX() with:
                gas gas_remaining wei
    else:
        if not -chainId + 137:
            staticcall routerAddress.WMATIC() with:
                    gas gas_remaining wei
        else:
            if not -chainId + 250:
                staticcall routerAddress.WFTM() with:
                        gas gas_remaining wei
            else:
                if not -chainId + 128:
                    staticcall routerAddress.WHT() with:
                            gas gas_remaining wei
                else:
                    if not -chainId + 100:
                        staticcall routerAddress.0x3cee464b with:
                                gas gas_remaining wei
                    else:
                        if -chainId + 56:
                            staticcall routerAddress.WETH() with:
                                    gas gas_remaining wei
                        else:
                            staticcall routerAddress.WBNB() with:
                                    gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    return ext_call.return_data[12 len 20]
}

function sub_31c6612a(?) {
    require calldata.size - 4 >= 32
    staticcall routerAddress.factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not -chainId + 43114:
        staticcall routerAddress.WAVAX() with:
                gas gas_remaining wei
    else:
        if not -chainId + 137:
            staticcall routerAddress.WMATIC() with:
                    gas gas_remaining wei
        else:
            if not -chainId + 250:
                staticcall routerAddress.WFTM() with:
                        gas gas_remaining wei
            else:
                if not -chainId + 128:
                    staticcall routerAddress.WHT() with:
                            gas gas_remaining wei
                else:
                    if not -chainId + 100:
                        staticcall routerAddress.0x3cee464b with:
                                gas gas_remaining wei
                    else:
                        if -chainId + 56:
                            staticcall routerAddress.WETH() with:
                                    gas gas_remaining wei
                        else:
                            staticcall routerAddress.WBNB() with:
                                    gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args tokenAddress, address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    staticcall address(ext_call.return_data[0]).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    staticcall address(ext_call.return_data[0]).token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] - tokenAddress:
        staticcall routerAddress.getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                gas gas_remaining wei
               args arg1, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
    else:
        staticcall routerAddress.getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                gas gas_remaining wei
               args arg1, ext_call.return_data[0] << 144, Mask(112, 0, ext_call.return_data[32])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}



}
