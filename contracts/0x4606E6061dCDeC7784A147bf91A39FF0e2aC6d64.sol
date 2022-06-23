contract main {




// =====================  Runtime code  =====================


#
#  - sub_1662a489(?)
#  - sub_62bbc32e(?)
#  - sub_7713fb18(?)
#  - sub_7ae4a97b(?)
#
uint8 stor0;
uint8 stor0; offset 8
uint16 stor0;
address owner;
uint8 paused;
uint256 stor151;
address treasuryAddress;
address emergencyAdminAddress;
uint256 sub_d6e6eb9f;
uint256 sub_c24f988b;
address oracleAddress;
mapping of address strategy;
mapping of uint256 sub_6d297854;
mapping of uint256 sub_51d09e04;
mapping of uint8 stor209;
mapping of uint256 sub_10f485f5;
mapping of uint8 stor211;
mapping of uint8 stor212;

function sub_10f485f5(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_10f485f5[arg1]
}

function strategy(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return strategy[arg1]
}

function sub_51d09e04(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_51d09e04[arg1]
}

function paused() {
    return bool(paused)
}

function treasury() {
    return treasuryAddress
}

function sub_66573d38(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor211[arg1])
}

function sub_6d297854(?) {
    require calldata.size - 4 >= 32
    return sub_6d297854[arg1]
}

function emergencyAdmin() {
    return emergencyAdminAddress
}

function oracle() {
    return oracleAddress
}

function owner() {
    return owner
}

function sub_943bc214(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    return bool(stor212[arg1][arg2])
}

function sub_c24f988b(?) {
    return sub_c24f988b
}

function sub_d6e6eb9f(?) {
    return sub_d6e6eb9f
}

function whitelistedTokens(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor209[arg1])
}

function _fallback() payable {
    revert
}

function sub_6aedcf28(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    stor212[msg.sender][address(arg1)] = 1
}

function sub_d5101251(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    stor212[msg.sender][address(arg1)] = 0
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function updateTreasury(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    treasuryAddress = arg1
}

function addHandler(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor211[address(arg1)] = 1
    emit HandlerAdded(arg1);
}

function removeHandler(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor211[address(arg1)] = 0
    emit HandlerRemoved(arg1);
}

function sub_e9ee9107(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor209[address(arg1)] = 0
    emit 0x7a6cf340: address(arg1)
}

function sub_b4576c9a(?) {
    require calldata.size - 4 >= 320
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    require arg8 == address(arg8)
    return sha3(address(arg1), address(arg2), address(arg3), address(arg4), arg5, arg6, arg7, address(arg8), arg9, arg10)
}

function pause() {
    if emergencyAdminAddress != msg.sender:
        if owner != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'Yolo: only emergency admin or owner can invoke this function'
    if paused:
        revert with 0, 'Pausable: paused'
    paused = 1
    emit Paused(msg.sender);
}

function unpause() {
    if emergencyAdminAddress != msg.sender:
        if owner != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'Yolo: only emergency admin or owner can invoke this function'
    if not paused:
        revert with 0, 'Pausable: not paused'
    paused = 0
    emit Unpaused(msg.sender);
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function sub_14c57e93(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if emergencyAdminAddress != msg.sender:
        if owner != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'Yolo: only emergency admin or owner can invoke this function'
    emergencyAdminAddress = address(arg1)
    emit EmergencyAdminUpdated(address(arg1));
}

function sub_b07c462c(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg3 == address(arg3)
    if not address(arg3):
        return arg2
    call address(arg3).0xadef4533 with:
         gas gas_remaining wei
        args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg2 > !ext_call.return_data[0]:
        revert with 0, 17
    return (arg2 + ext_call.return_data[0])
}

function sub_1aefa2d1(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 10000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Yolo::updateCancellationFee: fee percent exceeds max threshold'
    if not treasuryAddress:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Yolo::updateCancellationFee: treasury addresss not set'
    sub_c24f988b = arg1
}

function updateProtocolFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 10000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Yolo::updateProtocolFee: fee percent exceeds max threshold'
    if not treasuryAddress:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Yolo::updateProtocolFee: treasury addresss not set'
    sub_d6e6eb9f = arg1
    emit ProtocolFeeUpdated(arg1);
}

function updateOracle(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    staticcall arg1.isOracle() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Yolo::updateOracle: invalid oracle address'
    oracleAddress = arg1
    emit OracleAddressUpdated(arg1);
}

function sub_e3113df9(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = cd[4] + 36
    s = 128
    while idx < cd[4] + (32 * ('cd', 4).length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= mem[96]:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 209
        stor209[mem[(32 * idx) + 140 len 20]] = 1
        mem[ceil32(32 * ('cd', 4).length) + 97] = mem[(32 * idx) + 140 len 20]
        emit 0x2d415a7e: mem[ceil32(32 * ('cd', 4).length) + 97]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_cbbaae7a(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if emergencyAdminAddress != msg.sender:
        if owner != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'Yolo: only emergency admin or owner can invoke this function'
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 206
        mem[96] = 0xf3fef3a300000000000000000000000000000000000000000000000000000000
        mem[100] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[132] = -1
        require ext_code.size(strategy[address(cd[((32 * idx) + cd[4] + 36)])])
        call strategy[address(cd[((32 * idx) + cd[4] + 36)])].0xf3fef3a3 with:
             gas gas_remaining wei
            args address(cd[((32 * idx) + cd[4] + 36)]), -1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function decodeOrder(bytes arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(ceil32(arg1.length)) + 97] = 0
    mem[ceil32(ceil32(arg1.length)) + 129] = 0
    mem[ceil32(ceil32(arg1.length)) + 161] = 0
    mem[ceil32(ceil32(arg1.length)) + 193] = 0
    mem[ceil32(ceil32(arg1.length)) + 225] = 0
    mem[ceil32(ceil32(arg1.length)) + 257] = 0
    mem[ceil32(ceil32(arg1.length)) + 289] = 0
    mem[ceil32(ceil32(arg1.length)) + 321] = 0
    mem[ceil32(ceil32(arg1.length)) + 353] = 0
    mem[ceil32(ceil32(arg1.length)) + 385] = 0
    require arg1.length >= 320
    require mem[128] == mem[140 len 20]
    require mem[160] == mem[172 len 20]
    require mem[192] == mem[204 len 20]
    require mem[224] == mem[236 len 20]
    require mem[384] == mem[396 len 20]
    mem[ceil32(ceil32(arg1.length)) + 769] = mem[172 len 20]
    mem[ceil32(ceil32(arg1.length)) + 801] = mem[204 len 20]
    mem[ceil32(ceil32(arg1.length)) + 833] = mem[236 len 20]
    return mem[128] << 192, 
           mem[ceil32(ceil32(arg1.length)) + 769 len 96],
           mem[256],
           mem[288],
           mem[320],
           mem[352],
           mem[396 len 20],
           mem[416]
}

function sub_72edf627(?) {
    require calldata.size - 4 >= 256
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    require arg7 == address(arg7)
    if stor151 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor151 = 2
    if paused:
        revert with 0, 'Pausable: paused'
    if not address(arg3):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Yolo::updateOrder: zero recipient address'
    mem[arg2.length + 96] = 0
    if sub_6d297854[arg1] != sha3(arg2[all]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Yolo::updateOrder: order doesn't match'
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    mem[ceil32(arg2.length) + 128] = 0
    mem[ceil32(arg2.length) + 160] = 0
    mem[ceil32(arg2.length) + 192] = 0
    mem[ceil32(arg2.length) + 224] = 0
    mem[ceil32(arg2.length) + 256] = 0
    mem[ceil32(arg2.length) + 288] = 0
    mem[ceil32(arg2.length) + 320] = 0
    mem[ceil32(arg2.length) + 352] = 0
    mem[ceil32(arg2.length) + 384] = 0
    require arg2.length >= 320
    require mem[128] == mem[140 len 20]
    require mem[160] == mem[172 len 20]
    require mem[192] == mem[204 len 20]
    require mem[224] == mem[236 len 20]
    require mem[384] == mem[396 len 20]
    if mem[140 len 20] != msg.sender:
        revert with 0, 'Yolo::updateOrder: only creator can update the order'
    if arg5 <= 0:
        revert with 0, 'Yolo::updateOrder: zero return amount'
    if arg6 >= arg5:
        revert with 0, 'Yolo::updateOrder: stoploss amount greater than return amount'
    if arg8 <= 0:
        revert with 0, 'Yolo::updateOrder: invalid or zero execution fee'
    if arg8 >= mem[256]:
        revert with 0, 'Yolo::updateOrder: invalid or zero execution fee'
    sub_6d297854[arg1] = 0
    if sub_6d297854[msg.sender][address(arg3)][mem[204 len 20]][address(arg4)][mem[256]][arg5][arg6][address(arg7)][arg8][block.timestamp]:
        revert with 0, 'Yolo::updateOrder: order already exists with the same id'
    sub_6d297854[msg.sender][address(arg3)][mem[204 len 20]][address(arg4)][mem[256]][arg5][arg6][address(arg7)][arg8][block.timestamp] = sha3(msg.sender, address(arg3), mem[204 len 20], address(arg4), mem[256], arg5, arg6, mem[352], address(arg7), arg8)
    emit 0xab0fcc1e: arg1, sha3(msg.sender, address(arg3), mem[204 len 20], address(arg4), mem[256], arg5, arg6, address(arg7), arg8, block.timestamp), 96, 320, msg.sender, address(arg3), mem[204 len 20], address(arg4), mem[256], arg5, arg6, mem[352], address(arg7), arg8
    stor151 = 1
    return sha3(msg.sender, address(arg3), mem[204 len 20], address(arg4), mem[256], arg5, arg6, address(arg7), arg8, block.timestamp), 
           64,
           320,
           msg.sender,
           address(arg3),
           mem[204 len 20],
           address(arg4),
           mem[256],
           arg5,
           arg6,
           mem[352],
           address(arg7),
           arg8
}

function sub_7f5a8ffc(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = cd[4] + 36
    s = 128
    while idx < cd[4] + (32 * ('cd', 4).length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require cd[36] <= test266151307()
    require calldata.size > cd[36] + 35
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 98 < 97 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98 > test266151307():
        revert with 0, 65
    mem[ceil32(32 * ('cd', 4).length) + 97] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    s = ceil32(32 * ('cd', 4).length) + 129
    idx = cd[36] + 36
    while idx < cd[36] + (32 * ('cd', 36).length) + 36:
        mem[s] = cd[idx]
        s = s + 32
        idx = idx + 32
        continue 
    if msg.sender == emergencyAdminAddress:
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= mem[96]:
                revert with 0, 50
            if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                revert with 0, 50
            _78 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]
            if mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] > 10000:
                revert with 0, 'Yolo::updateTokensBuffer: buffer percent exceeds max threshold'
            if mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]:
                mem[0] = mem[(32 * idx) + 140 len 20]
                mem[32] = 208
                sub_51d09e04[mem[(32 * idx) + 140 len 20]] = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]
                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98] = mem[(32 * idx) + 140 len 20]
                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130] = _78
                emit 0xf9628d92: mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98], _78
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        if owner != msg.sender:
            revert with 0, 'Yolo: only emergency admin or owner can invoke this function'
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= mem[96]:
                revert with 0, 50
            if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                revert with 0, 50
            _79 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]
            if mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] > 10000:
                revert with 0, 'Yolo::updateTokensBuffer: buffer percent exceeds max threshold'
            if mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]:
                mem[0] = mem[(32 * idx) + 140 len 20]
                mem[32] = 208
                sub_51d09e04[mem[(32 * idx) + 140 len 20]] = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]
                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98] = mem[(32 * idx) + 140 len 20]
                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130] = _79
                emit 0xf9628d92: mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98], _79
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
}

function initialize(address arg1, address arg2, address arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if uint8(stor0.field_8):
        owner = msg.sender
        emit OwnershipTransferred(owner, msg.sender);
        paused = 0
        stor151 = 1
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if uint8(stor0.field_8):
            owner = msg.sender
            emit OwnershipTransferred(owner, msg.sender);
            paused = 0
            stor151 = 1
        else:
            uint16(stor0.field_0) = 257
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
            if uint8(stor0.field_8):
                owner = msg.sender
                emit OwnershipTransferred(owner, msg.sender);
                paused = 0
                stor151 = 1
            else:
                uint16(stor0.field_0) = 257
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                if uint8(stor0.field_8):
                    owner = msg.sender
                    emit OwnershipTransferred(owner, msg.sender);
                    paused = 0
                    stor151 = 1
                else:
                    uint16(stor0.field_0) = 257
                    uint8(stor0.field_8) = 0
                    if uint8(stor0.field_0):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                    if uint8(stor0.field_8):
                        owner = msg.sender
                        emit OwnershipTransferred(owner, msg.sender);
                        paused = 0
                        stor151 = 1
                    else:
                        uint16(stor0.field_0) = 257
                        owner = msg.sender
                        emit OwnershipTransferred(owner, msg.sender);
                        uint8(stor0.field_8) = 0
                        uint8(stor0.field_8) = 0
                        if uint8(stor0.field_0):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                        if uint8(stor0.field_8):
                            paused = 0
                            stor151 = 1
                        else:
                            uint16(stor0.field_0) = 257
                            if uint8(stor0.field_0):
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                            if uint8(stor0.field_8):
                                paused = 0
                                stor151 = 1
                            else:
                                uint16(stor0.field_0) = 257
                                uint8(stor0.field_8) = 0
                                if uint8(stor0.field_0):
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                                if uint8(stor0.field_8):
                                    paused = 0
                                    stor151 = 1
                                else:
                                    uint16(stor0.field_0) = 257
                                    paused = 0
                                    uint8(stor0.field_8) = 0
                                    uint8(stor0.field_8) = 0
                                    if uint8(stor0.field_0):
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                                    if uint8(stor0.field_8):
                                        stor151 = 1
                                    else:
                                        uint16(stor0.field_0) = 257
                                        if uint8(stor0.field_0):
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                                        if uint8(stor0.field_8):
                                            stor151 = 1
                                        else:
                                            uint16(stor0.field_0) = 257
                                            stor151 = 1
                                            uint8(stor0.field_8) = 0
                                            uint8(stor0.field_8) = 0
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
    emergencyAdminAddress = arg2
    oracleAddress = arg3
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
}

function sub_892f02ef(?) payable {
    require calldata.size - 4 >= 192
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg5 == address(arg5)
    if stor151 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor151 = 2
    if paused:
        revert with 0, 'Pausable: paused'
    if not address(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Yolo::createNativeOrder: zero recipient address'
    if msg.value <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Yolo::createNativeOrder: zero input amount'
    if arg3 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Yolo::createNativeOrder: zero return amount'
    if arg4 >= arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Yolo::createNativeOrder: stoploss amount greater than return amount'
    if arg6 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Yolo::createNativeOrder: invalid or zero execution fee'
    if arg6 >= msg.value:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Yolo::createNativeOrder: invalid or zero execution fee'
    if sub_6d297854[msg.sender][address(arg1)][0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7][address(arg2)][msg.value][arg3][arg4][address(arg5)][arg6][block.timestamp]:
        revert with 0, 'Yolo::createNativeOrder: order already exists with the same id'
    if not sub_10f485f5[0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7]:
        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.deposit() with:
           value msg.value wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if sub_10f485f5[0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7] > !msg.value:
            revert with 0, 17
        sub_10f485f5[0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7] += msg.value
        sub_6d297854[msg.sender][address(arg1)][0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7][address(arg2)][msg.value][arg3][arg4][address(arg5)][arg6][block.timestamp] = sha3(msg.sender, address(arg1), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, address(arg2), msg.value, arg3, arg4, msg.value, address(arg5), arg6)
        emit 0x13f12b10: sha3(msg.sender, address(arg1), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, address(arg2), msg.value, arg3, arg4, address(arg5), arg6, block.timestamp), 64, 320, msg.sender, address(arg1), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, address(arg2), msg.value, arg3, arg4, msg.value, address(arg5), arg6
        stor151 = 1
        return sha3(msg.sender, address(arg1), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, address(arg2), msg.value, arg3, arg4, address(arg5), arg6, block.timestamp), 
               64,
               320,
               msg.sender,
               address(arg1),
               0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7,
               address(arg2),
               msg.value,
               arg3,
               arg4,
               msg.value,
               address(arg5),
               arg6
    staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not strategy[0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7]:
        if msg.value and sub_10f485f5[0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7] > -1 / msg.value:
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        if msg.value * sub_10f485f5[0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7] / ext_call.return_data[0] <= 0:
            revert with 0, 'Yolo::createNativeOrder: shares can't be zero'
        require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
        call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.deposit() with:
           value msg.value wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if sub_10f485f5[0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7] > !(msg.value * sub_10f485f5[0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7] / ext_call.return_data[0]):
            revert with 0, 17
        sub_10f485f5[0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7] += msg.value * sub_10f485f5[0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7] / ext_call.return_data[0]
        sub_6d297854[msg.sender][address(arg1)][0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7][address(arg2)][msg.value][arg3][arg4][address(arg5)][arg6][block.timestamp] = sha3(msg.sender, address(arg1), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, address(arg2), msg.value, arg3, arg4, msg.value * sub_10f485f5[0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7] / ext_call.return_data[0], address(arg5), arg6)
        emit 0x13f12b10: sha3(msg.sender, address(arg1), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, address(arg2), msg.value, arg3, arg4, address(arg5), arg6, block.timestamp), 64, 320, msg.sender, address(arg1), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, address(arg2), msg.value, arg3, arg4, msg.value * sub_10f485f5[0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7] / ext_call.return_data[0], address(arg5), arg6
        stor151 = 1
        return sha3(msg.sender, address(arg1), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, address(arg2), msg.value, arg3, arg4, address(arg5), arg6, block.timestamp), 
               64,
               320,
               msg.sender,
               address(arg1),
               0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7,
               address(arg2),
               msg.value,
               arg3,
               arg4,
               msg.value * sub_10f485f5[0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7] / ext_call.return_data[0],
               address(arg5),
               arg6
    call strategy[0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7].0xadef4533 with:
         gas gas_remaining wei
        args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > !ext_call.return_data[0]:
        revert with 0, 17
    if msg.value and sub_10f485f5[0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7] > -1 / msg.value:
        revert with 0, 17
    if not 2 * ext_call.return_data[0]:
        revert with 0, 18
    if msg.value * sub_10f485f5[0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7] / 2 * ext_call.return_data[0] <= 0:
        revert with 0, 'Yolo::createNativeOrder: shares can't be zero'
    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.deposit() with:
       value msg.value wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if sub_10f485f5[0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7] > !(msg.value * sub_10f485f5[0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7] / 2 * ext_call.return_data[0]):
        revert with 0, 17
    sub_10f485f5[0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7] += msg.value * sub_10f485f5[0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7] / 2 * ext_call.return_data[0]
    sub_6d297854[msg.sender][address(arg1)][0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7][address(arg2)][msg.value][arg3][arg4][address(arg5)][arg6][block.timestamp] = sha3(msg.sender, address(arg1), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, address(arg2), msg.value, arg3, arg4, msg.value * sub_10f485f5[0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7] / 2 * ext_call.return_data[0], address(arg5), arg6)
    emit 0x13f12b10: sha3(msg.sender, address(arg1), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, address(arg2), msg.value, arg3, arg4, address(arg5), arg6, block.timestamp), 64, 320, msg.sender, address(arg1), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, address(arg2), msg.value, arg3, arg4, msg.value * sub_10f485f5[0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7] / 2 * ext_call.return_data[0], address(arg5), arg6
    stor151 = 1
    return sha3(msg.sender, address(arg1), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, address(arg2), msg.value, arg3, arg4, address(arg5), arg6, block.timestamp), 
           64,
           320,
           msg.sender,
           address(arg1),
           0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7,
           address(arg2),
           msg.value,
           arg3,
           arg4,
           msg.value * sub_10f485f5[0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7] / 2 * ext_call.return_data[0],
           address(arg5),
           arg6
}

function sub_ab266c6d(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 4).length) + 97
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = cd[4] + 36
    s = 128
    while idx < cd[4] + (32 * ('cd', 4).length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= mem[96]:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 206
        _825 = sha3(mem[(32 * idx) + 140 len 20], 206)
        if not strategy[mem[(32 * idx) + 140 len 20]]:
            revert with 0, 'Yolo::rebalanceTokens: strategy doesn't exist'
        if idx >= mem[96]:
            revert with 0, 50
        _828 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = this.address
        staticcall address(_828).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _832 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _833 = mem[_832]
        if idx >= mem[96]:
            revert with 0, 50
        _835 = mem[(32 * idx) + 128]
        mem[mem[64]] = 0xadef453300000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = address(_835)
        call strategy[mem[0]].0xadef4533 with:
             gas gas_remaining wei
            args address(_835)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _838 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _839 = mem[_838]
        if _833 > !mem[_838]:
            revert with 0, 17
        if idx >= mem[96]:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 208
        _842 = sha3(mem[(32 * idx) + 140 len 20], 208)
        if not _833 + _839:
            if _833 <= 0:
                if _833 < 0:
                    if idx >= mem[96]:
                        revert with 0, 50
                    _845 = mem[(32 * idx) + 128]
                    if 0 < _833:
                        revert with 0, 17
                    mem[mem[64]] = 0xf3fef3a300000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = address(_845)
                    mem[mem[64] + 36] = -_833
                    require ext_code.size(address(stor[_825]))
                    call address(stor[_825]).0xf3fef3a3 with:
                         gas gas_remaining wei
                        args address(_845), -_833
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                if mem[96] < 1:
                    revert with 0, 17
                if idx == mem[96] - 1:
                    if gas_remaining < gas_remaining:
                        revert with 0, 17
                    if False and block.gasprice > 0:
                        revert with 0, 17
                    mem[mem[64]] = 0
                    emit 0xdf7bdec6: 0
            else:
                if _833 < 0:
                    revert with 0, 17
                if idx >= mem[96]:
                    revert with 0, 50
                _850 = mem[(32 * idx) + 128]
                _854 = mem[64]
                mem[mem[64] + 36] = address(stor[_825])
                mem[mem[64] + 68] = _833
                _856 = mem[64]
                mem[mem[64]] = 68
                mem[64] = mem[64] + 100
                mem[_856 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_856 + 36 len 28]
                mem[64] = _854 + 164
                mem[_854 + 100] = 32
                mem[_854 + 132] = 'SafeERC20: low-level call failed'
                if not ext_code.size(address(_850)):
                    revert with 0, 'Address: call to non-contract'
                _871 = mem[_856]
                s = 0
                while s < _871:
                    mem[s + _854 + 164] = mem[s + _856 + 32]
                    s = s + 32
                    continue 
                if ceil32(_871) <= _871:
                    call address(_850).mem[_854 + 164 len 4] with:
                         gas gas_remaining wei
                        args mem[_854 + 168 len _871 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            mem[_854 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_854 + 168] = 32
                            idx = 0
                            while idx < 32:
                                mem[idx + _854 + 232] = mem[idx + _854 + 132]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_854 + 232]
                        if not mem[96]:
                            if idx >= mem[96]:
                                revert with 0, 50
                            _1355 = mem[(32 * idx) + 128]
                            mem[_854 + 164] = 0x47e7ef2400000000000000000000000000000000000000000000000000000000
                            mem[_854 + 168] = address(_1355)
                            mem[_854 + 200] = _833
                            require ext_code.size(address(stor[_825]))
                            call address(stor[_825]).0x47e7ef24 with:
                                 gas gas_remaining wei
                                args address(_1355), _833
                        else:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            if idx >= mem[96]:
                                revert with 0, 50
                            _1463 = mem[(32 * idx) + 128]
                            mem[_854 + 164] = 0x47e7ef2400000000000000000000000000000000000000000000000000000000
                            mem[_854 + 168] = address(_1463)
                            mem[_854 + 200] = _833
                            require ext_code.size(address(stor[_825]))
                            call address(stor[_825]).0x47e7ef24 with:
                                 gas gas_remaining wei
                                args address(_1463), _833
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if mem[96] < 1:
                            revert with 0, 17
                        if idx == mem[96] - 1:
                            if gas_remaining < gas_remaining:
                                revert with 0, 17
                            if False and block.gasprice > 0:
                                revert with 0, 17
                            mem[_854 + 164] = 0
                            emit 0xdf7bdec6: 0
                    else:
                        mem[64] = _854 + ceil32(return_data.size) + 165
                        mem[_854 + 164] = return_data.size
                        mem[_854 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_854 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_854 + ceil32(return_data.size) + 169] = 32
                            idx = 0
                            while idx < 32:
                                mem[idx + _854 + ceil32(return_data.size) + 233] = mem[idx + _854 + 132]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_854 + ceil32(return_data.size) + 233]
                        if not return_data.size:
                            if idx >= mem[96]:
                                revert with 0, 50
                            _1357 = mem[(32 * idx) + 128]
                            mem[_854 + ceil32(return_data.size) + 165] = 0x47e7ef2400000000000000000000000000000000000000000000000000000000
                            mem[_854 + ceil32(return_data.size) + 169] = address(_1357)
                            mem[_854 + ceil32(return_data.size) + 201] = _833
                            require ext_code.size(address(stor[_825]))
                            call address(stor[_825]).0x47e7ef24 with:
                                 gas gas_remaining wei
                                args address(_1357), _833
                        else:
                            require return_data.size >= 32
                            require mem[_854 + 196] == bool(mem[_854 + 196])
                            if not mem[_854 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            if idx >= mem[96]:
                                revert with 0, 50
                            _1465 = mem[(32 * idx) + 128]
                            mem[_854 + ceil32(return_data.size) + 165] = 0x47e7ef2400000000000000000000000000000000000000000000000000000000
                            mem[_854 + ceil32(return_data.size) + 169] = address(_1465)
                            mem[_854 + ceil32(return_data.size) + 201] = _833
                            require ext_code.size(address(stor[_825]))
                            call address(stor[_825]).0x47e7ef24 with:
                                 gas gas_remaining wei
                                args address(_1465), _833
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if mem[96] < 1:
                            revert with 0, 17
                        if idx == mem[96] - 1:
                            if gas_remaining < gas_remaining:
                                revert with 0, 17
                            if False and block.gasprice > 0:
                                revert with 0, 17
                            mem[_854 + ceil32(return_data.size) + 165] = 0
                            emit 0xdf7bdec6: 0
                else:
                    mem[_871 + _854 + 164] = 0
                    call address(_850).mem[_854 + 164 len 4] with:
                         gas gas_remaining wei
                        args mem[_854 + 168 len _871 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            mem[_854 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_854 + 168] = 32
                            idx = 0
                            while idx < 32:
                                mem[idx + _854 + 232] = mem[idx + _854 + 132]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_854 + 232]
                        if not mem[96]:
                            if idx >= mem[96]:
                                revert with 0, 50
                            _1359 = mem[(32 * idx) + 128]
                            mem[_854 + 164] = 0x47e7ef2400000000000000000000000000000000000000000000000000000000
                            mem[_854 + 168] = address(_1359)
                            mem[_854 + 200] = _833
                            require ext_code.size(address(stor[_825]))
                            call address(stor[_825]).0x47e7ef24 with:
                                 gas gas_remaining wei
                                args address(_1359), _833
                        else:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            if idx >= mem[96]:
                                revert with 0, 50
                            _1467 = mem[(32 * idx) + 128]
                            mem[_854 + 164] = 0x47e7ef2400000000000000000000000000000000000000000000000000000000
                            mem[_854 + 168] = address(_1467)
                            mem[_854 + 200] = _833
                            require ext_code.size(address(stor[_825]))
                            call address(stor[_825]).0x47e7ef24 with:
                                 gas gas_remaining wei
                                args address(_1467), _833
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if mem[96] < 1:
                            revert with 0, 17
                        if idx == mem[96] - 1:
                            if gas_remaining < gas_remaining:
                                revert with 0, 17
                            if False and block.gasprice > 0:
                                revert with 0, 17
                            mem[_854 + 164] = 0
                            emit 0xdf7bdec6: 0
                    else:
                        mem[64] = _854 + ceil32(return_data.size) + 165
                        mem[_854 + 164] = return_data.size
                        mem[_854 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_854 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_854 + ceil32(return_data.size) + 169] = 32
                            idx = 0
                            while idx < 32:
                                mem[idx + _854 + ceil32(return_data.size) + 233] = mem[idx + _854 + 132]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_854 + ceil32(return_data.size) + 233]
                        if not return_data.size:
                            if idx >= mem[96]:
                                revert with 0, 50
                            _1361 = mem[(32 * idx) + 128]
                            mem[_854 + ceil32(return_data.size) + 165] = 0x47e7ef2400000000000000000000000000000000000000000000000000000000
                            mem[_854 + ceil32(return_data.size) + 169] = address(_1361)
                            mem[_854 + ceil32(return_data.size) + 201] = _833
                            require ext_code.size(address(stor[_825]))
                            call address(stor[_825]).0x47e7ef24 with:
                                 gas gas_remaining wei
                                args address(_1361), _833
                        else:
                            require return_data.size >= 32
                            require mem[_854 + 196] == bool(mem[_854 + 196])
                            if not mem[_854 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            if idx >= mem[96]:
                                revert with 0, 50
                            _1469 = mem[(32 * idx) + 128]
                            mem[_854 + ceil32(return_data.size) + 165] = 0x47e7ef2400000000000000000000000000000000000000000000000000000000
                            mem[_854 + ceil32(return_data.size) + 169] = address(_1469)
                            mem[_854 + ceil32(return_data.size) + 201] = _833
                            require ext_code.size(address(stor[_825]))
                            call address(stor[_825]).0x47e7ef24 with:
                                 gas gas_remaining wei
                                args address(_1469), _833
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if mem[96] < 1:
                            revert with 0, 17
                        if idx == mem[96] - 1:
                            if gas_remaining < gas_remaining:
                                revert with 0, 17
                            if False and block.gasprice > 0:
                                revert with 0, 17
                            mem[_854 + ceil32(return_data.size) + 165] = 0
                            emit 0xdf7bdec6: 0
        else:
            if not sub_51d09e04[mem[(32 * idx) + 140 len 20]]:
                if _833 <= 0:
                    if _833 < 0:
                        if idx >= mem[96]:
                            revert with 0, 50
                        _849 = mem[(32 * idx) + 128]
                        if 0 < _833:
                            revert with 0, 17
                        mem[mem[64]] = 0xf3fef3a300000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = address(_849)
                        mem[mem[64] + 36] = -_833
                        require ext_code.size(address(stor[_825]))
                        call address(stor[_825]).0xf3fef3a3 with:
                             gas gas_remaining wei
                            args address(_849), -_833
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    if mem[96] < 1:
                        revert with 0, 17
                    if idx == mem[96] - 1:
                        if gas_remaining < gas_remaining:
                            revert with 0, 17
                        if False and block.gasprice > 0:
                            revert with 0, 17
                        mem[mem[64]] = 0
                        emit 0xdf7bdec6: 0
                else:
                    if _833 < 0:
                        revert with 0, 17
                    if idx >= mem[96]:
                        revert with 0, 50
                    _855 = mem[(32 * idx) + 128]
                    _860 = mem[64]
                    mem[mem[64] + 36] = address(stor[_825])
                    mem[mem[64] + 68] = _833
                    _862 = mem[64]
                    mem[mem[64]] = 68
                    mem[64] = mem[64] + 100
                    mem[_862 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_862 + 36 len 28]
                    mem[64] = _860 + 164
                    mem[_860 + 100] = 32
                    mem[_860 + 132] = 'SafeERC20: low-level call failed'
                    if not ext_code.size(address(_855)):
                        revert with 0, 'Address: call to non-contract'
                    _877 = mem[_862]
                    s = 0
                    while s < _877:
                        mem[s + _860 + 164] = mem[s + _862 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_877) <= _877:
                        call address(_855).mem[_860 + 164 len 4] with:
                             gas gas_remaining wei
                            args mem[_860 + 168 len _877 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                mem[_860 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_860 + 168] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _860 + 232] = mem[idx + _860 + 132]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_860 + 232]
                            if not mem[96]:
                                if idx >= mem[96]:
                                    revert with 0, 50
                                _1371 = mem[(32 * idx) + 128]
                                mem[_860 + 164] = 0x47e7ef2400000000000000000000000000000000000000000000000000000000
                                mem[_860 + 168] = address(_1371)
                                mem[_860 + 200] = _833
                                require ext_code.size(address(stor[_825]))
                                call address(stor[_825]).0x47e7ef24 with:
                                     gas gas_remaining wei
                                    args address(_1371), _833
                            else:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                if idx >= mem[96]:
                                    revert with 0, 50
                                _1479 = mem[(32 * idx) + 128]
                                mem[_860 + 164] = 0x47e7ef2400000000000000000000000000000000000000000000000000000000
                                mem[_860 + 168] = address(_1479)
                                mem[_860 + 200] = _833
                                require ext_code.size(address(stor[_825]))
                                call address(stor[_825]).0x47e7ef24 with:
                                     gas gas_remaining wei
                                    args address(_1479), _833
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if mem[96] < 1:
                                revert with 0, 17
                            if idx == mem[96] - 1:
                                if gas_remaining < gas_remaining:
                                    revert with 0, 17
                                if False and block.gasprice > 0:
                                    revert with 0, 17
                                mem[_860 + 164] = 0
                                emit 0xdf7bdec6: 0
                        else:
                            mem[64] = _860 + ceil32(return_data.size) + 165
                            mem[_860 + 164] = return_data.size
                            mem[_860 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_860 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_860 + ceil32(return_data.size) + 169] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _860 + ceil32(return_data.size) + 233] = mem[idx + _860 + 132]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_860 + ceil32(return_data.size) + 233]
                            if not return_data.size:
                                if idx >= mem[96]:
                                    revert with 0, 50
                                _1373 = mem[(32 * idx) + 128]
                                mem[_860 + ceil32(return_data.size) + 165] = 0x47e7ef2400000000000000000000000000000000000000000000000000000000
                                mem[_860 + ceil32(return_data.size) + 169] = address(_1373)
                                mem[_860 + ceil32(return_data.size) + 201] = _833
                                require ext_code.size(address(stor[_825]))
                                call address(stor[_825]).0x47e7ef24 with:
                                     gas gas_remaining wei
                                    args address(_1373), _833
                            else:
                                require return_data.size >= 32
                                require mem[_860 + 196] == bool(mem[_860 + 196])
                                if not mem[_860 + 196]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                if idx >= mem[96]:
                                    revert with 0, 50
                                _1481 = mem[(32 * idx) + 128]
                                mem[_860 + ceil32(return_data.size) + 165] = 0x47e7ef2400000000000000000000000000000000000000000000000000000000
                                mem[_860 + ceil32(return_data.size) + 169] = address(_1481)
                                mem[_860 + ceil32(return_data.size) + 201] = _833
                                require ext_code.size(address(stor[_825]))
                                call address(stor[_825]).0x47e7ef24 with:
                                     gas gas_remaining wei
                                    args address(_1481), _833
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if mem[96] < 1:
                                revert with 0, 17
                            if idx == mem[96] - 1:
                                if gas_remaining < gas_remaining:
                                    revert with 0, 17
                                if False and block.gasprice > 0:
                                    revert with 0, 17
                                mem[_860 + ceil32(return_data.size) + 165] = 0
                                emit 0xdf7bdec6: 0
                    else:
                        mem[_877 + _860 + 164] = 0
                        call address(_855).mem[_860 + 164 len 4] with:
                             gas gas_remaining wei
                            args mem[_860 + 168 len _877 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                mem[_860 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_860 + 168] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _860 + 232] = mem[idx + _860 + 132]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_860 + 232]
                            if not mem[96]:
                                if idx >= mem[96]:
                                    revert with 0, 50
                                _1375 = mem[(32 * idx) + 128]
                                mem[_860 + 164] = 0x47e7ef2400000000000000000000000000000000000000000000000000000000
                                mem[_860 + 168] = address(_1375)
                                mem[_860 + 200] = _833
                                require ext_code.size(address(stor[_825]))
                                call address(stor[_825]).0x47e7ef24 with:
                                     gas gas_remaining wei
                                    args address(_1375), _833
                            else:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                if idx >= mem[96]:
                                    revert with 0, 50
                                _1483 = mem[(32 * idx) + 128]
                                mem[_860 + 164] = 0x47e7ef2400000000000000000000000000000000000000000000000000000000
                                mem[_860 + 168] = address(_1483)
                                mem[_860 + 200] = _833
                                require ext_code.size(address(stor[_825]))
                                call address(stor[_825]).0x47e7ef24 with:
                                     gas gas_remaining wei
                                    args address(_1483), _833
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if mem[96] < 1:
                                revert with 0, 17
                            if idx == mem[96] - 1:
                                if gas_remaining < gas_remaining:
                                    revert with 0, 17
                                if False and block.gasprice > 0:
                                    revert with 0, 17
                                mem[_860 + 164] = 0
                                emit 0xdf7bdec6: 0
                        else:
                            mem[64] = _860 + ceil32(return_data.size) + 165
                            mem[_860 + 164] = return_data.size
                            mem[_860 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_860 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_860 + ceil32(return_data.size) + 169] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _860 + ceil32(return_data.size) + 233] = mem[idx + _860 + 132]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_860 + ceil32(return_data.size) + 233]
                            if not return_data.size:
                                if idx >= mem[96]:
                                    revert with 0, 50
                                _1377 = mem[(32 * idx) + 128]
                                mem[_860 + ceil32(return_data.size) + 165] = 0x47e7ef2400000000000000000000000000000000000000000000000000000000
                                mem[_860 + ceil32(return_data.size) + 169] = address(_1377)
                                mem[_860 + ceil32(return_data.size) + 201] = _833
                                require ext_code.size(address(stor[_825]))
                                call address(stor[_825]).0x47e7ef24 with:
                                     gas gas_remaining wei
                                    args address(_1377), _833
                            else:
                                require return_data.size >= 32
                                require mem[_860 + 196] == bool(mem[_860 + 196])
                                if not mem[_860 + 196]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                if idx >= mem[96]:
                                    revert with 0, 50
                                _1485 = mem[(32 * idx) + 128]
                                mem[_860 + ceil32(return_data.size) + 165] = 0x47e7ef2400000000000000000000000000000000000000000000000000000000
                                mem[_860 + ceil32(return_data.size) + 169] = address(_1485)
                                mem[_860 + ceil32(return_data.size) + 201] = _833
                                require ext_code.size(address(stor[_825]))
                                call address(stor[_825]).0x47e7ef24 with:
                                     gas gas_remaining wei
                                    args address(_1485), _833
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if mem[96] < 1:
                                revert with 0, 17
                            if idx == mem[96] - 1:
                                if gas_remaining < gas_remaining:
                                    revert with 0, 17
                                if False and block.gasprice > 0:
                                    revert with 0, 17
                                mem[_860 + ceil32(return_data.size) + 165] = 0
                                emit 0xdf7bdec6: 0
            else:
                if not sub_51d09e04[mem[(32 * idx) + 140 len 20]]:
                    revert with 0, 18
                if _833 + _839 > -5001 / sub_51d09e04[mem[(32 * idx) + 140 len 20]]:
                    revert with 0, 'PercentageMath: MATH_MULTIPLICATION_OVERFLOW'
                if _833 + _839 and sub_51d09e04[mem[(32 * idx) + 140 len 20]] > -1 / _833 + _839:
                    revert with 0, 17
                if (_833 * sub_51d09e04[mem[(32 * idx) + 140 len 20]]) + (_839 * sub_51d09e04[mem[(32 * idx) + 140 len 20]]) > -5001:
                    revert with 0, 17
                if _833 <= (_833 * sub_51d09e04[mem[(32 * idx) + 140 len 20]]) + (_839 * sub_51d09e04[mem[(32 * idx) + 140 len 20]]) + 5000 / 10000:
                    if _833 < (_833 * sub_51d09e04[mem[(32 * idx) + 140 len 20]]) + (_839 * sub_51d09e04[mem[(32 * idx) + 140 len 20]]) + 5000 / 10000:
                        if idx >= mem[96]:
                            revert with 0, 50
                        _933 = mem[(32 * idx) + 128]
                        if (_833 * sub_51d09e04[mem[(32 * idx) + 140 len 20]]) + (_839 * sub_51d09e04[mem[(32 * idx) + 140 len 20]]) + 5000 / 10000 < _833:
                            revert with 0, 17
                        mem[mem[64]] = 0xf3fef3a300000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = address(_933)
                        mem[mem[64] + 36] = ((_833 * sub_51d09e04[mem[0]]) + (_839 * sub_51d09e04[mem[0]]) + 5000 / 10000) - _833
                        require ext_code.size(address(stor[_825]))
                        call address(stor[_825]).0xf3fef3a3 with:
                             gas gas_remaining wei
                            args address(_933), ((_833 * sub_51d09e04[mem[0]]) + (_839 * sub_51d09e04[mem[0]]) + 5000 / 10000) - _833
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    if mem[96] < 1:
                        revert with 0, 17
                    if idx == mem[96] - 1:
                        if gas_remaining < gas_remaining:
                            revert with 0, 17
                        if False and block.gasprice > 0:
                            revert with 0, 17
                        mem[mem[64]] = 0
                        emit 0xdf7bdec6: 0
                else:
                    if _833 < (_833 * sub_51d09e04[mem[(32 * idx) + 140 len 20]]) + (_839 * sub_51d09e04[mem[(32 * idx) + 140 len 20]]) + 5000 / 10000:
                        revert with 0, 17
                    if idx >= mem[96]:
                        revert with 0, 50
                    _947 = mem[(32 * idx) + 128]
                    _966 = mem[64]
                    mem[mem[64] + 36] = address(stor[_825])
                    mem[mem[64] + 68] = _833 - ((_833 * sub_51d09e04[mem[0]]) + (_839 * sub_51d09e04[mem[0]]) + 5000 / 10000)
                    _975 = mem[64]
                    mem[mem[64]] = 68
                    mem[64] = mem[64] + 100
                    mem[_975 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_975 + 36 len 28]
                    mem[64] = _966 + 164
                    mem[_966 + 100] = 32
                    mem[_966 + 132] = 'SafeERC20: low-level call failed'
                    if not ext_code.size(address(_947)):
                        revert with 0, 'Address: call to non-contract'
                    _1041 = mem[_975]
                    s = 0
                    while s < _1041:
                        mem[s + _966 + 164] = mem[s + _975 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_1041) <= _1041:
                        call address(_947).mem[_966 + 164 len 4] with:
                             gas gas_remaining wei
                            args mem[_966 + 168 len _1041 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                mem[_966 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_966 + 168] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _966 + 232] = mem[idx + _966 + 132]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_966 + 232]
                            if not mem[96]:
                                if idx >= mem[96]:
                                    revert with 0, 50
                                _1363 = mem[(32 * idx) + 128]
                                mem[_966 + 164] = 0x47e7ef2400000000000000000000000000000000000000000000000000000000
                                mem[_966 + 168] = address(_1363)
                                mem[_966 + 200] = _833 - ((_833 * sub_51d09e04[mem[0]]) + (_839 * sub_51d09e04[mem[0]]) + 5000 / 10000)
                                require ext_code.size(address(stor[_825]))
                                call address(stor[_825]).0x47e7ef24 with:
                                     gas gas_remaining wei
                                    args address(_1363), _833 - ((_833 * sub_51d09e04[mem[0]]) + (_839 * sub_51d09e04[mem[0]]) + 5000 / 10000)
                            else:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                if idx >= mem[96]:
                                    revert with 0, 50
                                _1471 = mem[(32 * idx) + 128]
                                mem[_966 + 164] = 0x47e7ef2400000000000000000000000000000000000000000000000000000000
                                mem[_966 + 168] = address(_1471)
                                mem[_966 + 200] = _833 - ((_833 * sub_51d09e04[mem[0]]) + (_839 * sub_51d09e04[mem[0]]) + 5000 / 10000)
                                require ext_code.size(address(stor[_825]))
                                call address(stor[_825]).0x47e7ef24 with:
                                     gas gas_remaining wei
                                    args address(_1471), _833 - ((_833 * sub_51d09e04[mem[0]]) + (_839 * sub_51d09e04[mem[0]]) + 5000 / 10000)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if mem[96] < 1:
                                revert with 0, 17
                            if idx == mem[96] - 1:
                                if gas_remaining < gas_remaining:
                                    revert with 0, 17
                                if False and block.gasprice > 0:
                                    revert with 0, 17
                                mem[_966 + 164] = 0
                                emit 0xdf7bdec6: 0
                        else:
                            mem[64] = _966 + ceil32(return_data.size) + 165
                            mem[_966 + 164] = return_data.size
                            mem[_966 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_966 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_966 + ceil32(return_data.size) + 169] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _966 + ceil32(return_data.size) + 233] = mem[idx + _966 + 132]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_966 + ceil32(return_data.size) + 233]
                            if not return_data.size:
                                if idx >= mem[96]:
                                    revert with 0, 50
                                _1365 = mem[(32 * idx) + 128]
                                mem[_966 + ceil32(return_data.size) + 165] = 0x47e7ef2400000000000000000000000000000000000000000000000000000000
                                mem[_966 + ceil32(return_data.size) + 169] = address(_1365)
                                mem[_966 + ceil32(return_data.size) + 201] = _833 - ((_833 * uint256(stor[_842])) + (_839 * uint256(stor[_842])) + 5000 / 10000)
                                require ext_code.size(address(stor[_825]))
                                call address(stor[_825]).0x47e7ef24 with:
                                     gas gas_remaining wei
                                    args address(_1365), _833 - ((_833 * uint256(stor[_842])) + (_839 * uint256(stor[_842])) + 5000 / 10000)
                            else:
                                require return_data.size >= 32
                                require mem[_966 + 196] == bool(mem[_966 + 196])
                                if not mem[_966 + 196]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                if idx >= mem[96]:
                                    revert with 0, 50
                                _1473 = mem[(32 * idx) + 128]
                                mem[_966 + ceil32(return_data.size) + 165] = 0x47e7ef2400000000000000000000000000000000000000000000000000000000
                                mem[_966 + ceil32(return_data.size) + 169] = address(_1473)
                                mem[_966 + ceil32(return_data.size) + 201] = _833 - ((_833 * uint256(stor[_842])) + (_839 * uint256(stor[_842])) + 5000 / 10000)
                                require ext_code.size(address(stor[_825]))
                                call address(stor[_825]).0x47e7ef24 with:
                                     gas gas_remaining wei
                                    args address(_1473), _833 - ((_833 * uint256(stor[_842])) + (_839 * uint256(stor[_842])) + 5000 / 10000)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if mem[96] < 1:
                                revert with 0, 17
                            if idx == mem[96] - 1:
                                if gas_remaining < gas_remaining:
                                    revert with 0, 17
                                if False and block.gasprice > 0:
                                    revert with 0, 17
                                mem[_966 + ceil32(return_data.size) + 165] = 0
                                emit 0xdf7bdec6: 0
                    else:
                        mem[_1041 + _966 + 164] = 0
                        call address(_947).mem[_966 + 164 len 4] with:
                             gas gas_remaining wei
                            args mem[_966 + 168 len _1041 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                mem[_966 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_966 + 168] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _966 + 232] = mem[idx + _966 + 132]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_966 + 232]
                            if not mem[96]:
                                if idx >= mem[96]:
                                    revert with 0, 50
                                _1367 = mem[(32 * idx) + 128]
                                mem[_966 + 164] = 0x47e7ef2400000000000000000000000000000000000000000000000000000000
                                mem[_966 + 168] = address(_1367)
                                mem[_966 + 200] = _833 - ((_833 * sub_51d09e04[mem[0]]) + (_839 * sub_51d09e04[mem[0]]) + 5000 / 10000)
                                require ext_code.size(address(stor[_825]))
                                call address(stor[_825]).0x47e7ef24 with:
                                     gas gas_remaining wei
                                    args address(_1367), _833 - ((_833 * sub_51d09e04[mem[0]]) + (_839 * sub_51d09e04[mem[0]]) + 5000 / 10000)
                            else:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                if idx >= mem[96]:
                                    revert with 0, 50
                                _1475 = mem[(32 * idx) + 128]
                                mem[_966 + 164] = 0x47e7ef2400000000000000000000000000000000000000000000000000000000
                                mem[_966 + 168] = address(_1475)
                                mem[_966 + 200] = _833 - ((_833 * sub_51d09e04[mem[0]]) + (_839 * sub_51d09e04[mem[0]]) + 5000 / 10000)
                                require ext_code.size(address(stor[_825]))
                                call address(stor[_825]).0x47e7ef24 with:
                                     gas gas_remaining wei
                                    args address(_1475), _833 - ((_833 * sub_51d09e04[mem[0]]) + (_839 * sub_51d09e04[mem[0]]) + 5000 / 10000)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if mem[96] < 1:
                                revert with 0, 17
                            if idx == mem[96] - 1:
                                if gas_remaining < gas_remaining:
                                    revert with 0, 17
                                if False and block.gasprice > 0:
                                    revert with 0, 17
                                mem[_966 + 164] = 0
                                emit 0xdf7bdec6: 0
                        else:
                            mem[64] = _966 + ceil32(return_data.size) + 165
                            mem[_966 + 164] = return_data.size
                            mem[_966 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_966 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_966 + ceil32(return_data.size) + 169] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _966 + ceil32(return_data.size) + 233] = mem[idx + _966 + 132]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_966 + ceil32(return_data.size) + 233]
                            if not return_data.size:
                                if idx >= mem[96]:
                                    revert with 0, 50
                                _1369 = mem[(32 * idx) + 128]
                                mem[_966 + ceil32(return_data.size) + 165] = 0x47e7ef2400000000000000000000000000000000000000000000000000000000
                                mem[_966 + ceil32(return_data.size) + 169] = address(_1369)
                                mem[_966 + ceil32(return_data.size) + 201] = _833 - ((_833 * uint256(stor[_842])) + (_839 * uint256(stor[_842])) + 5000 / 10000)
                                require ext_code.size(address(stor[_825]))
                                call address(stor[_825]).0x47e7ef24 with:
                                     gas gas_remaining wei
                                    args address(_1369), _833 - ((_833 * uint256(stor[_842])) + (_839 * uint256(stor[_842])) + 5000 / 10000)
                            else:
                                require return_data.size >= 32
                                require mem[_966 + 196] == bool(mem[_966 + 196])
                                if not mem[_966 + 196]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                if idx >= mem[96]:
                                    revert with 0, 50
                                _1477 = mem[(32 * idx) + 128]
                                mem[_966 + ceil32(return_data.size) + 165] = 0x47e7ef2400000000000000000000000000000000000000000000000000000000
                                mem[_966 + ceil32(return_data.size) + 169] = address(_1477)
                                mem[_966 + ceil32(return_data.size) + 201] = _833 - ((_833 * uint256(stor[_842])) + (_839 * uint256(stor[_842])) + 5000 / 10000)
                                require ext_code.size(address(stor[_825]))
                                call address(stor[_825]).0x47e7ef24 with:
                                     gas gas_remaining wei
                                    args address(_1477), _833 - ((_833 * uint256(stor[_842])) + (_839 * uint256(stor[_842])) + 5000 / 10000)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if mem[96] < 1:
                                revert with 0, 17
                            if idx == mem[96] - 1:
                                if gas_remaining < gas_remaining:
                                    revert with 0, 17
                                if False and block.gasprice > 0:
                                    revert with 0, 17
                                mem[_966 + ceil32(return_data.size) + 165] = 0
                                emit 0xdf7bdec6: 0
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function setStrategy(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if strategy[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Yolo::setStrategy: strategy already exists'
    if arg2:
        emit 0x1a654dbe: address(arg1), arg2
        mem[0] = arg1
        mem[32] = 206
        strategy[address(arg1)] = arg2
        mem[96] = 1
        mem[64] = 160
        mem[128] = arg1
        idx = 0
        while idx < 1:
            if idx >= mem[96]:
                revert with 0, 50
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 206
            _424 = sha3(mem[(32 * idx) + 140 len 20], 206)
            if not strategy[mem[(32 * idx) + 140 len 20]]:
                revert with 0, 'Yolo::rebalanceTokens: strategy doesn't exist'
            if idx >= mem[96]:
                revert with 0, 50
            _427 = mem[(32 * idx) + 128]
            mem[mem[64] + 4] = this.address
            staticcall address(_427).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _431 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _432 = mem[_431]
            if idx >= mem[96]:
                revert with 0, 50
            _434 = mem[(32 * idx) + 128]
            mem[mem[64]] = 0xadef453300000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = address(_434)
            call strategy[mem[0]].0xadef4533 with:
                 gas gas_remaining wei
                args address(_434)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _437 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _438 = mem[_437]
            if _432 > !mem[_437]:
                revert with 0, 17
            if idx >= mem[96]:
                revert with 0, 50
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 208
            _441 = sha3(mem[(32 * idx) + 140 len 20], 208)
            if not _432 + _438:
                if _432 <= 0:
                    if _432 < 0:
                        if idx >= mem[96]:
                            revert with 0, 50
                        _444 = mem[(32 * idx) + 128]
                        if 0 < _432:
                            revert with 0, 17
                        mem[mem[64]] = 0xf3fef3a300000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = address(_444)
                        mem[mem[64] + 36] = -_432
                        require ext_code.size(address(stor[_424]))
                        call address(stor[_424]).0xf3fef3a3 with:
                             gas gas_remaining wei
                            args address(_444), -_432
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    if mem[96] < 1:
                        revert with 0, 17
                    if idx == mem[96] - 1:
                        if gas_remaining < gas_remaining:
                            revert with 0, 17
                        if False and block.gasprice > 0:
                            revert with 0, 17
                        mem[mem[64]] = 0
                        emit 0xdf7bdec6: 0
                else:
                    if _432 < 0:
                        revert with 0, 17
                    if idx >= mem[96]:
                        revert with 0, 50
                    _449 = mem[(32 * idx) + 128]
                    _453 = mem[64]
                    mem[mem[64] + 36] = address(stor[_424])
                    mem[mem[64] + 68] = _432
                    _455 = mem[64]
                    mem[mem[64]] = 68
                    mem[64] = mem[64] + 100
                    mem[_455 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_455 + 36 len 28]
                    mem[64] = _453 + 164
                    mem[_453 + 100] = 32
                    mem[_453 + 132] = 'SafeERC20: low-level call failed'
                    if not ext_code.size(address(_449)):
                        revert with 0, 'Address: call to non-contract'
                    _470 = mem[_455]
                    s = 0
                    while s < _470:
                        mem[s + _453 + 164] = mem[s + _455 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_470) <= _470:
                        call address(_449).mem[_453 + 164 len 4] with:
                             gas gas_remaining wei
                            args mem[_453 + 168 len _470 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                mem[_453 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_453 + 168] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _453 + 232] = mem[idx + _453 + 132]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_453 + 232]
                            if not mem[96]:
                                if idx >= mem[96]:
                                    revert with 0, 50
                                _954 = mem[(32 * idx) + 128]
                                mem[_453 + 164] = 0x47e7ef2400000000000000000000000000000000000000000000000000000000
                                mem[_453 + 168] = address(_954)
                                mem[_453 + 200] = _432
                                require ext_code.size(address(stor[_424]))
                                call address(stor[_424]).0x47e7ef24 with:
                                     gas gas_remaining wei
                                    args address(_954), _432
                            else:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                if idx >= mem[96]:
                                    revert with 0, 50
                                _1062 = mem[(32 * idx) + 128]
                                mem[_453 + 164] = 0x47e7ef2400000000000000000000000000000000000000000000000000000000
                                mem[_453 + 168] = address(_1062)
                                mem[_453 + 200] = _432
                                require ext_code.size(address(stor[_424]))
                                call address(stor[_424]).0x47e7ef24 with:
                                     gas gas_remaining wei
                                    args address(_1062), _432
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if mem[96] < 1:
                                revert with 0, 17
                            if idx == mem[96] - 1:
                                if gas_remaining < gas_remaining:
                                    revert with 0, 17
                                if False and block.gasprice > 0:
                                    revert with 0, 17
                                mem[_453 + 164] = 0
                                emit 0xdf7bdec6: 0
                        else:
                            mem[64] = _453 + ceil32(return_data.size) + 165
                            mem[_453 + 164] = return_data.size
                            mem[_453 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_453 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_453 + ceil32(return_data.size) + 169] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _453 + ceil32(return_data.size) + 233] = mem[idx + _453 + 132]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_453 + ceil32(return_data.size) + 233]
                            if not return_data.size:
                                if idx >= mem[96]:
                                    revert with 0, 50
                                _956 = mem[(32 * idx) + 128]
                                mem[_453 + ceil32(return_data.size) + 165] = 0x47e7ef2400000000000000000000000000000000000000000000000000000000
                                mem[_453 + ceil32(return_data.size) + 169] = address(_956)
                                mem[_453 + ceil32(return_data.size) + 201] = _432
                                require ext_code.size(address(stor[_424]))
                                call address(stor[_424]).0x47e7ef24 with:
                                     gas gas_remaining wei
                                    args address(_956), _432
                            else:
                                require return_data.size >= 32
                                require mem[_453 + 196] == bool(mem[_453 + 196])
                                if not mem[_453 + 196]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                if idx >= mem[96]:
                                    revert with 0, 50
                                _1064 = mem[(32 * idx) + 128]
                                mem[_453 + ceil32(return_data.size) + 165] = 0x47e7ef2400000000000000000000000000000000000000000000000000000000
                                mem[_453 + ceil32(return_data.size) + 169] = address(_1064)
                                mem[_453 + ceil32(return_data.size) + 201] = _432
                                require ext_code.size(address(stor[_424]))
                                call address(stor[_424]).0x47e7ef24 with:
                                     gas gas_remaining wei
                                    args address(_1064), _432
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if mem[96] < 1:
                                revert with 0, 17
                            if idx == mem[96] - 1:
                                if gas_remaining < gas_remaining:
                                    revert with 0, 17
                                if False and block.gasprice > 0:
                                    revert with 0, 17
                                mem[_453 + ceil32(return_data.size) + 165] = 0
                                emit 0xdf7bdec6: 0
                    else:
                        mem[_470 + _453 + 164] = 0
                        call address(_449).mem[_453 + 164 len 4] with:
                             gas gas_remaining wei
                            args mem[_453 + 168 len _470 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                mem[_453 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_453 + 168] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _453 + 232] = mem[idx + _453 + 132]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_453 + 232]
                            if not mem[96]:
                                if idx >= mem[96]:
                                    revert with 0, 50
                                _958 = mem[(32 * idx) + 128]
                                mem[_453 + 164] = 0x47e7ef2400000000000000000000000000000000000000000000000000000000
                                mem[_453 + 168] = address(_958)
                                mem[_453 + 200] = _432
                                require ext_code.size(address(stor[_424]))
                                call address(stor[_424]).0x47e7ef24 with:
                                     gas gas_remaining wei
                                    args address(_958), _432
                            else:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                if idx >= mem[96]:
                                    revert with 0, 50
                                _1066 = mem[(32 * idx) + 128]
                                mem[_453 + 164] = 0x47e7ef2400000000000000000000000000000000000000000000000000000000
                                mem[_453 + 168] = address(_1066)
                                mem[_453 + 200] = _432
                                require ext_code.size(address(stor[_424]))
                                call address(stor[_424]).0x47e7ef24 with:
                                     gas gas_remaining wei
                                    args address(_1066), _432
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if mem[96] < 1:
                                revert with 0, 17
                            if idx == mem[96] - 1:
                                if gas_remaining < gas_remaining:
                                    revert with 0, 17
                                if False and block.gasprice > 0:
                                    revert with 0, 17
                                mem[_453 + 164] = 0
                                emit 0xdf7bdec6: 0
                        else:
                            mem[64] = _453 + ceil32(return_data.size) + 165
                            mem[_453 + 164] = return_data.size
                            mem[_453 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_453 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_453 + ceil32(return_data.size) + 169] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _453 + ceil32(return_data.size) + 233] = mem[idx + _453 + 132]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_453 + ceil32(return_data.size) + 233]
                            if not return_data.size:
                                if idx >= mem[96]:
                                    revert with 0, 50
                                _960 = mem[(32 * idx) + 128]
                                mem[_453 + ceil32(return_data.size) + 165] = 0x47e7ef2400000000000000000000000000000000000000000000000000000000
                                mem[_453 + ceil32(return_data.size) + 169] = address(_960)
                                mem[_453 + ceil32(return_data.size) + 201] = _432
                                require ext_code.size(address(stor[_424]))
                                call address(stor[_424]).0x47e7ef24 with:
                                     gas gas_remaining wei
                                    args address(_960), _432
                            else:
                                require return_data.size >= 32
                                require mem[_453 + 196] == bool(mem[_453 + 196])
                                if not mem[_453 + 196]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                if idx >= mem[96]:
                                    revert with 0, 50
                                _1068 = mem[(32 * idx) + 128]
                                mem[_453 + ceil32(return_data.size) + 165] = 0x47e7ef2400000000000000000000000000000000000000000000000000000000
                                mem[_453 + ceil32(return_data.size) + 169] = address(_1068)
                                mem[_453 + ceil32(return_data.size) + 201] = _432
                                require ext_code.size(address(stor[_424]))
                                call address(stor[_424]).0x47e7ef24 with:
                                     gas gas_remaining wei
                                    args address(_1068), _432
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if mem[96] < 1:
                                revert with 0, 17
                            if idx == mem[96] - 1:
                                if gas_remaining < gas_remaining:
                                    revert with 0, 17
                                if False and block.gasprice > 0:
                                    revert with 0, 17
                                mem[_453 + ceil32(return_data.size) + 165] = 0
                                emit 0xdf7bdec6: 0
            else:
                if not sub_51d09e04[mem[(32 * idx) + 140 len 20]]:
                    if _432 <= 0:
                        if _432 < 0:
                            if idx >= mem[96]:
                                revert with 0, 50
                            _448 = mem[(32 * idx) + 128]
                            if 0 < _432:
                                revert with 0, 17
                            mem[mem[64]] = 0xf3fef3a300000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = address(_448)
                            mem[mem[64] + 36] = -_432
                            require ext_code.size(address(stor[_424]))
                            call address(stor[_424]).0xf3fef3a3 with:
                                 gas gas_remaining wei
                                args address(_448), -_432
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        if mem[96] < 1:
                            revert with 0, 17
                        if idx == mem[96] - 1:
                            if gas_remaining < gas_remaining:
                                revert with 0, 17
                            if False and block.gasprice > 0:
                                revert with 0, 17
                            mem[mem[64]] = 0
                            emit 0xdf7bdec6: 0
                    else:
                        if _432 < 0:
                            revert with 0, 17
                        if idx >= mem[96]:
                            revert with 0, 50
                        _454 = mem[(32 * idx) + 128]
                        _459 = mem[64]
                        mem[mem[64] + 36] = address(stor[_424])
                        mem[mem[64] + 68] = _432
                        _461 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_461 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_461 + 36 len 28]
                        mem[64] = _459 + 164
                        mem[_459 + 100] = 32
                        mem[_459 + 132] = 'SafeERC20: low-level call failed'
                        if not ext_code.size(address(_454)):
                            revert with 0, 'Address: call to non-contract'
                        _476 = mem[_461]
                        s = 0
                        while s < _476:
                            mem[s + _459 + 164] = mem[s + _461 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_476) <= _476:
                            call address(_454).mem[_459 + 164 len 4] with:
                                 gas gas_remaining wei
                                args mem[_459 + 168 len _476 - 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96]:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    mem[_459 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_459 + 168] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _459 + 232] = mem[idx + _459 + 132]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_459 + 232]
                                if not mem[96]:
                                    if idx >= mem[96]:
                                        revert with 0, 50
                                    _970 = mem[(32 * idx) + 128]
                                    mem[_459 + 164] = 0x47e7ef2400000000000000000000000000000000000000000000000000000000
                                    mem[_459 + 168] = address(_970)
                                    mem[_459 + 200] = _432
                                    require ext_code.size(address(stor[_424]))
                                    call address(stor[_424]).0x47e7ef24 with:
                                         gas gas_remaining wei
                                        args address(_970), _432
                                else:
                                    require mem[96] >= 32
                                    require mem[128] == bool(mem[128])
                                    if not mem[128]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    if idx >= mem[96]:
                                        revert with 0, 50
                                    _1078 = mem[(32 * idx) + 128]
                                    mem[_459 + 164] = 0x47e7ef2400000000000000000000000000000000000000000000000000000000
                                    mem[_459 + 168] = address(_1078)
                                    mem[_459 + 200] = _432
                                    require ext_code.size(address(stor[_424]))
                                    call address(stor[_424]).0x47e7ef24 with:
                                         gas gas_remaining wei
                                        args address(_1078), _432
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if mem[96] < 1:
                                    revert with 0, 17
                                if idx == mem[96] - 1:
                                    if gas_remaining < gas_remaining:
                                        revert with 0, 17
                                    if False and block.gasprice > 0:
                                        revert with 0, 17
                                    mem[_459 + 164] = 0
                                    emit 0xdf7bdec6: 0
                            else:
                                mem[64] = _459 + ceil32(return_data.size) + 165
                                mem[_459 + 164] = return_data.size
                                mem[_459 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_459 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_459 + ceil32(return_data.size) + 169] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _459 + ceil32(return_data.size) + 233] = mem[idx + _459 + 132]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_459 + ceil32(return_data.size) + 233]
                                if not return_data.size:
                                    if idx >= mem[96]:
                                        revert with 0, 50
                                    _972 = mem[(32 * idx) + 128]
                                    mem[_459 + ceil32(return_data.size) + 165] = 0x47e7ef2400000000000000000000000000000000000000000000000000000000
                                    mem[_459 + ceil32(return_data.size) + 169] = address(_972)
                                    mem[_459 + ceil32(return_data.size) + 201] = _432
                                    require ext_code.size(address(stor[_424]))
                                    call address(stor[_424]).0x47e7ef24 with:
                                         gas gas_remaining wei
                                        args address(_972), _432
                                else:
                                    require return_data.size >= 32
                                    require mem[_459 + 196] == bool(mem[_459 + 196])
                                    if not mem[_459 + 196]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    if idx >= mem[96]:
                                        revert with 0, 50
                                    _1080 = mem[(32 * idx) + 128]
                                    mem[_459 + ceil32(return_data.size) + 165] = 0x47e7ef2400000000000000000000000000000000000000000000000000000000
                                    mem[_459 + ceil32(return_data.size) + 169] = address(_1080)
                                    mem[_459 + ceil32(return_data.size) + 201] = _432
                                    require ext_code.size(address(stor[_424]))
                                    call address(stor[_424]).0x47e7ef24 with:
                                         gas gas_remaining wei
                                        args address(_1080), _432
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if mem[96] < 1:
                                    revert with 0, 17
                                if idx == mem[96] - 1:
                                    if gas_remaining < gas_remaining:
                                        revert with 0, 17
                                    if False and block.gasprice > 0:
                                        revert with 0, 17
                                    mem[_459 + ceil32(return_data.size) + 165] = 0
                                    emit 0xdf7bdec6: 0
                        else:
                            mem[_476 + _459 + 164] = 0
                            call address(_454).mem[_459 + 164 len 4] with:
                                 gas gas_remaining wei
                                args mem[_459 + 168 len _476 - 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96]:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    mem[_459 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_459 + 168] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _459 + 232] = mem[idx + _459 + 132]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_459 + 232]
                                if not mem[96]:
                                    if idx >= mem[96]:
                                        revert with 0, 50
                                    _974 = mem[(32 * idx) + 128]
                                    mem[_459 + 164] = 0x47e7ef2400000000000000000000000000000000000000000000000000000000
                                    mem[_459 + 168] = address(_974)
                                    mem[_459 + 200] = _432
                                    require ext_code.size(address(stor[_424]))
                                    call address(stor[_424]).0x47e7ef24 with:
                                         gas gas_remaining wei
                                        args address(_974), _432
                                else:
                                    require mem[96] >= 32
                                    require mem[128] == bool(mem[128])
                                    if not mem[128]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    if idx >= mem[96]:
                                        revert with 0, 50
                                    _1082 = mem[(32 * idx) + 128]
                                    mem[_459 + 164] = 0x47e7ef2400000000000000000000000000000000000000000000000000000000
                                    mem[_459 + 168] = address(_1082)
                                    mem[_459 + 200] = _432
                                    require ext_code.size(address(stor[_424]))
                                    call address(stor[_424]).0x47e7ef24 with:
                                         gas gas_remaining wei
                                        args address(_1082), _432
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if mem[96] < 1:
                                    revert with 0, 17
                                if idx == mem[96] - 1:
                                    if gas_remaining < gas_remaining:
                                        revert with 0, 17
                                    if False and block.gasprice > 0:
                                        revert with 0, 17
                                    mem[_459 + 164] = 0
                                    emit 0xdf7bdec6: 0
                            else:
                                mem[64] = _459 + ceil32(return_data.size) + 165
                                mem[_459 + 164] = return_data.size
                                mem[_459 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_459 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_459 + ceil32(return_data.size) + 169] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _459 + ceil32(return_data.size) + 233] = mem[idx + _459 + 132]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_459 + ceil32(return_data.size) + 233]
                                if not return_data.size:
                                    if idx >= mem[96]:
                                        revert with 0, 50
                                    _976 = mem[(32 * idx) + 128]
                                    mem[_459 + ceil32(return_data.size) + 165] = 0x47e7ef2400000000000000000000000000000000000000000000000000000000
                                    mem[_459 + ceil32(return_data.size) + 169] = address(_976)
                                    mem[_459 + ceil32(return_data.size) + 201] = _432
                                    require ext_code.size(address(stor[_424]))
                                    call address(stor[_424]).0x47e7ef24 with:
                                         gas gas_remaining wei
                                        args address(_976), _432
                                else:
                                    require return_data.size >= 32
                                    require mem[_459 + 196] == bool(mem[_459 + 196])
                                    if not mem[_459 + 196]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    if idx >= mem[96]:
                                        revert with 0, 50
                                    _1084 = mem[(32 * idx) + 128]
                                    mem[_459 + ceil32(return_data.size) + 165] = 0x47e7ef2400000000000000000000000000000000000000000000000000000000
                                    mem[_459 + ceil32(return_data.size) + 169] = address(_1084)
                                    mem[_459 + ceil32(return_data.size) + 201] = _432
                                    require ext_code.size(address(stor[_424]))
                                    call address(stor[_424]).0x47e7ef24 with:
                                         gas gas_remaining wei
                                        args address(_1084), _432
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if mem[96] < 1:
                                    revert with 0, 17
                                if idx == mem[96] - 1:
                                    if gas_remaining < gas_remaining:
                                        revert with 0, 17
                                    if False and block.gasprice > 0:
                                        revert with 0, 17
                                    mem[_459 + ceil32(return_data.size) + 165] = 0
                                    emit 0xdf7bdec6: 0
                else:
                    if not sub_51d09e04[mem[(32 * idx) + 140 len 20]]:
                        revert with 0, 18
                    if _432 + _438 > -5001 / sub_51d09e04[mem[(32 * idx) + 140 len 20]]:
                        revert with 0, 'PercentageMath: MATH_MULTIPLICATION_OVERFLOW'
                    if _432 + _438 and sub_51d09e04[mem[(32 * idx) + 140 len 20]] > -1 / _432 + _438:
                        revert with 0, 17
                    if (_432 * sub_51d09e04[mem[(32 * idx) + 140 len 20]]) + (_438 * sub_51d09e04[mem[(32 * idx) + 140 len 20]]) > -5001:
                        revert with 0, 17
                    if _432 <= (_432 * sub_51d09e04[mem[(32 * idx) + 140 len 20]]) + (_438 * sub_51d09e04[mem[(32 * idx) + 140 len 20]]) + 5000 / 10000:
                        if _432 < (_432 * sub_51d09e04[mem[(32 * idx) + 140 len 20]]) + (_438 * sub_51d09e04[mem[(32 * idx) + 140 len 20]]) + 5000 / 10000:
                            if idx >= mem[96]:
                                revert with 0, 50
                            _532 = mem[(32 * idx) + 128]
                            if (_432 * sub_51d09e04[mem[(32 * idx) + 140 len 20]]) + (_438 * sub_51d09e04[mem[(32 * idx) + 140 len 20]]) + 5000 / 10000 < _432:
                                revert with 0, 17
                            mem[mem[64]] = 0xf3fef3a300000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = address(_532)
                            mem[mem[64] + 36] = ((_432 * sub_51d09e04[mem[0]]) + (_438 * sub_51d09e04[mem[0]]) + 5000 / 10000) - _432
                            require ext_code.size(address(stor[_424]))
                            call address(stor[_424]).0xf3fef3a3 with:
                                 gas gas_remaining wei
                                args address(_532), ((_432 * sub_51d09e04[mem[0]]) + (_438 * sub_51d09e04[mem[0]]) + 5000 / 10000) - _432
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        if mem[96] < 1:
                            revert with 0, 17
                        if idx == mem[96] - 1:
                            if gas_remaining < gas_remaining:
                                revert with 0, 17
                            if False and block.gasprice > 0:
                                revert with 0, 17
                            mem[mem[64]] = 0
                            emit 0xdf7bdec6: 0
                    else:
                        if _432 < (_432 * sub_51d09e04[mem[(32 * idx) + 140 len 20]]) + (_438 * sub_51d09e04[mem[(32 * idx) + 140 len 20]]) + 5000 / 10000:
                            revert with 0, 17
                        if idx >= mem[96]:
                            revert with 0, 50
                        _546 = mem[(32 * idx) + 128]
                        _565 = mem[64]
                        mem[mem[64] + 36] = address(stor[_424])
                        mem[mem[64] + 68] = _432 - ((_432 * sub_51d09e04[mem[0]]) + (_438 * sub_51d09e04[mem[0]]) + 5000 / 10000)
                        _574 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_574 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_574 + 36 len 28]
                        mem[64] = _565 + 164
                        mem[_565 + 100] = 32
                        mem[_565 + 132] = 'SafeERC20: low-level call failed'
                        if not ext_code.size(address(_546)):
                            revert with 0, 'Address: call to non-contract'
                        _640 = mem[_574]
                        s = 0
                        while s < _640:
                            mem[s + _565 + 164] = mem[s + _574 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_640) <= _640:
                            call address(_546).mem[_565 + 164 len 4] with:
                                 gas gas_remaining wei
                                args mem[_565 + 168 len _640 - 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96]:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    mem[_565 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_565 + 168] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _565 + 232] = mem[idx + _565 + 132]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_565 + 232]
                                if not mem[96]:
                                    if idx >= mem[96]:
                                        revert with 0, 50
                                    _962 = mem[(32 * idx) + 128]
                                    mem[_565 + 164] = 0x47e7ef2400000000000000000000000000000000000000000000000000000000
                                    mem[_565 + 168] = address(_962)
                                    mem[_565 + 200] = _432 - ((_432 * sub_51d09e04[mem[0]]) + (_438 * sub_51d09e04[mem[0]]) + 5000 / 10000)
                                    require ext_code.size(address(stor[_424]))
                                    call address(stor[_424]).0x47e7ef24 with:
                                         gas gas_remaining wei
                                        args address(_962), _432 - ((_432 * sub_51d09e04[mem[0]]) + (_438 * sub_51d09e04[mem[0]]) + 5000 / 10000)
                                else:
                                    require mem[96] >= 32
                                    require mem[128] == bool(mem[128])
                                    if not mem[128]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    if idx >= mem[96]:
                                        revert with 0, 50
                                    _1070 = mem[(32 * idx) + 128]
                                    mem[_565 + 164] = 0x47e7ef2400000000000000000000000000000000000000000000000000000000
                                    mem[_565 + 168] = address(_1070)
                                    mem[_565 + 200] = _432 - ((_432 * sub_51d09e04[mem[0]]) + (_438 * sub_51d09e04[mem[0]]) + 5000 / 10000)
                                    require ext_code.size(address(stor[_424]))
                                    call address(stor[_424]).0x47e7ef24 with:
                                         gas gas_remaining wei
                                        args address(_1070), _432 - ((_432 * sub_51d09e04[mem[0]]) + (_438 * sub_51d09e04[mem[0]]) + 5000 / 10000)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if mem[96] < 1:
                                    revert with 0, 17
                                if idx == mem[96] - 1:
                                    if gas_remaining < gas_remaining:
                                        revert with 0, 17
                                    if False and block.gasprice > 0:
                                        revert with 0, 17
                                    mem[_565 + 164] = 0
                                    emit 0xdf7bdec6: 0
                            else:
                                mem[64] = _565 + ceil32(return_data.size) + 165
                                mem[_565 + 164] = return_data.size
                                mem[_565 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_565 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_565 + ceil32(return_data.size) + 169] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _565 + ceil32(return_data.size) + 233] = mem[idx + _565 + 132]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_565 + ceil32(return_data.size) + 233]
                                if not return_data.size:
                                    if idx >= mem[96]:
                                        revert with 0, 50
                                    _964 = mem[(32 * idx) + 128]
                                    mem[_565 + ceil32(return_data.size) + 165] = 0x47e7ef2400000000000000000000000000000000000000000000000000000000
                                    mem[_565 + ceil32(return_data.size) + 169] = address(_964)
                                    mem[_565 + ceil32(return_data.size) + 201] = _432 - ((_432 * uint256(stor[_441])) + (_438 * uint256(stor[_441])) + 5000 / 10000)
                                    require ext_code.size(address(stor[_424]))
                                    call address(stor[_424]).0x47e7ef24 with:
                                         gas gas_remaining wei
                                        args address(_964), _432 - ((_432 * uint256(stor[_441])) + (_438 * uint256(stor[_441])) + 5000 / 10000)
                                else:
                                    require return_data.size >= 32
                                    require mem[_565 + 196] == bool(mem[_565 + 196])
                                    if not mem[_565 + 196]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    if idx >= mem[96]:
                                        revert with 0, 50
                                    _1072 = mem[(32 * idx) + 128]
                                    mem[_565 + ceil32(return_data.size) + 165] = 0x47e7ef2400000000000000000000000000000000000000000000000000000000
                                    mem[_565 + ceil32(return_data.size) + 169] = address(_1072)
                                    mem[_565 + ceil32(return_data.size) + 201] = _432 - ((_432 * uint256(stor[_441])) + (_438 * uint256(stor[_441])) + 5000 / 10000)
                                    require ext_code.size(address(stor[_424]))
                                    call address(stor[_424]).0x47e7ef24 with:
                                         gas gas_remaining wei
                                        args address(_1072), _432 - ((_432 * uint256(stor[_441])) + (_438 * uint256(stor[_441])) + 5000 / 10000)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if mem[96] < 1:
                                    revert with 0, 17
                                if idx == mem[96] - 1:
                                    if gas_remaining < gas_remaining:
                                        revert with 0, 17
                                    if False and block.gasprice > 0:
                                        revert with 0, 17
                                    mem[_565 + ceil32(return_data.size) + 165] = 0
                                    emit 0xdf7bdec6: 0
                        else:
                            mem[_640 + _565 + 164] = 0
                            call address(_546).mem[_565 + 164 len 4] with:
                                 gas gas_remaining wei
                                args mem[_565 + 168 len _640 - 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96]:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    mem[_565 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_565 + 168] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _565 + 232] = mem[idx + _565 + 132]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_565 + 232]
                                if not mem[96]:
                                    if idx >= mem[96]:
                                        revert with 0, 50
                                    _966 = mem[(32 * idx) + 128]
                                    mem[_565 + 164] = 0x47e7ef2400000000000000000000000000000000000000000000000000000000
                                    mem[_565 + 168] = address(_966)
                                    mem[_565 + 200] = _432 - ((_432 * sub_51d09e04[mem[0]]) + (_438 * sub_51d09e04[mem[0]]) + 5000 / 10000)
                                    require ext_code.size(address(stor[_424]))
                                    call address(stor[_424]).0x47e7ef24 with:
                                         gas gas_remaining wei
                                        args address(_966), _432 - ((_432 * sub_51d09e04[mem[0]]) + (_438 * sub_51d09e04[mem[0]]) + 5000 / 10000)
                                else:
                                    require mem[96] >= 32
                                    require mem[128] == bool(mem[128])
                                    if not mem[128]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    if idx >= mem[96]:
                                        revert with 0, 50
                                    _1074 = mem[(32 * idx) + 128]
                                    mem[_565 + 164] = 0x47e7ef2400000000000000000000000000000000000000000000000000000000
                                    mem[_565 + 168] = address(_1074)
                                    mem[_565 + 200] = _432 - ((_432 * sub_51d09e04[mem[0]]) + (_438 * sub_51d09e04[mem[0]]) + 5000 / 10000)
                                    require ext_code.size(address(stor[_424]))
                                    call address(stor[_424]).0x47e7ef24 with:
                                         gas gas_remaining wei
                                        args address(_1074), _432 - ((_432 * sub_51d09e04[mem[0]]) + (_438 * sub_51d09e04[mem[0]]) + 5000 / 10000)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if mem[96] < 1:
                                    revert with 0, 17
                                if idx == mem[96] - 1:
                                    if gas_remaining < gas_remaining:
                                        revert with 0, 17
                                    if False and block.gasprice > 0:
                                        revert with 0, 17
                                    mem[_565 + 164] = 0
                                    emit 0xdf7bdec6: 0
                            else:
                                mem[64] = _565 + ceil32(return_data.size) + 165
                                mem[_565 + 164] = return_data.size
                                mem[_565 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_565 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_565 + ceil32(return_data.size) + 169] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _565 + ceil32(return_data.size) + 233] = mem[idx + _565 + 132]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_565 + ceil32(return_data.size) + 233]
                                if not return_data.size:
                                    if idx >= mem[96]:
                                        revert with 0, 50
                                    _968 = mem[(32 * idx) + 128]
                                    mem[_565 + ceil32(return_data.size) + 165] = 0x47e7ef2400000000000000000000000000000000000000000000000000000000
                                    mem[_565 + ceil32(return_data.size) + 169] = address(_968)
                                    mem[_565 + ceil32(return_data.size) + 201] = _432 - ((_432 * uint256(stor[_441])) + (_438 * uint256(stor[_441])) + 5000 / 10000)
                                    require ext_code.size(address(stor[_424]))
                                    call address(stor[_424]).0x47e7ef24 with:
                                         gas gas_remaining wei
                                        args address(_968), _432 - ((_432 * uint256(stor[_441])) + (_438 * uint256(stor[_441])) + 5000 / 10000)
                                else:
                                    require return_data.size >= 32
                                    require mem[_565 + 196] == bool(mem[_565 + 196])
                                    if not mem[_565 + 196]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    if idx >= mem[96]:
                                        revert with 0, 50
                                    _1076 = mem[(32 * idx) + 128]
                                    mem[_565 + ceil32(return_data.size) + 165] = 0x47e7ef2400000000000000000000000000000000000000000000000000000000
                                    mem[_565 + ceil32(return_data.size) + 169] = address(_1076)
                                    mem[_565 + ceil32(return_data.size) + 201] = _432 - ((_432 * uint256(stor[_441])) + (_438 * uint256(stor[_441])) + 5000 / 10000)
                                    require ext_code.size(address(stor[_424]))
                                    call address(stor[_424]).0x47e7ef24 with:
                                         gas gas_remaining wei
                                        args address(_1076), _432 - ((_432 * uint256(stor[_441])) + (_438 * uint256(stor[_441])) + 5000 / 10000)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if mem[96] < 1:
                                    revert with 0, 17
                                if idx == mem[96] - 1:
                                    if gas_remaining < gas_remaining:
                                        revert with 0, 17
                                    if False and block.gasprice > 0:
                                        revert with 0, 17
                                    mem[_565 + ceil32(return_data.size) + 165] = 0
                                    emit 0xdf7bdec6: 0
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
}

function migrateStrategy(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not strategy[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Yolo::migrateStrategy: no previous strategy exists'
    if strategy[address(arg1)] == arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Yolo::migrateStrategy: new strategy same as previous'
    mem[132] = -1
    require ext_code.size(strategy[address(arg1)])
    call strategy[address(arg1)].0xf3fef3a3 with:
         gas gas_remaining wei
        args address(arg1), -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[100] = arg1
    call strategy[address(arg1)].0xadef4533 with:
         gas gas_remaining wei
        args arg1
    mem[96] = ext_call.return_data[0]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0, 'Yolo::migrateStrategy: withdraw from strategy failed'
    if not arg2:
        strategy[address(arg1)] = arg2
    else:
        emit 0x1a654dbe: address(arg1), arg2
        mem[0] = arg1
        mem[32] = 206
        strategy[address(arg1)] = arg2
        mem[ceil32(return_data.size) + 96] = 1
        mem[64] = ceil32(return_data.size) + 160
        mem[ceil32(return_data.size) + 128] = arg1
        idx = 0
        while idx < 1:
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 0, 50
            mem[0] = mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]
            mem[32] = 206
            _435 = sha3(mem[(32 * idx) + ceil32(return_data.size) + 140 len 20], 206)
            if not strategy[mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]]:
                revert with 0, 'Yolo::rebalanceTokens: strategy doesn't exist'
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 0, 50
            _438 = mem[(32 * idx) + ceil32(return_data.size) + 128]
            mem[mem[64] + 4] = this.address
            staticcall address(_438).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _442 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _443 = mem[_442]
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 0, 50
            _445 = mem[(32 * idx) + ceil32(return_data.size) + 128]
            mem[mem[64]] = 0xadef453300000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = address(_445)
            call strategy[mem[0]].0xadef4533 with:
                 gas gas_remaining wei
                args address(_445)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _448 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _449 = mem[_448]
            if _443 > !mem[_448]:
                revert with 0, 17
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 0, 50
            mem[0] = mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]
            mem[32] = 208
            _452 = sha3(mem[(32 * idx) + ceil32(return_data.size) + 140 len 20], 208)
            if not _443 + _449:
                if _443 <= 0:
                    if _443 < 0:
                        if idx >= mem[ceil32(return_data.size) + 96]:
                            revert with 0, 50
                        _455 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                        if 0 < _443:
                            revert with 0, 17
                        mem[mem[64]] = 0xf3fef3a300000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = address(_455)
                        mem[mem[64] + 36] = -_443
                        require ext_code.size(address(stor[_435]))
                        call address(stor[_435]).0xf3fef3a3 with:
                             gas gas_remaining wei
                            args address(_455), -_443
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    if mem[ceil32(return_data.size) + 96] < 1:
                        revert with 0, 17
                    if idx == mem[ceil32(return_data.size) + 96] - 1:
                        if gas_remaining < gas_remaining:
                            revert with 0, 17
                        if False and block.gasprice > 0:
                            revert with 0, 17
                        mem[mem[64]] = 0
                        emit 0xdf7bdec6: 0
                else:
                    if _443 < 0:
                        revert with 0, 17
                    if idx >= mem[ceil32(return_data.size) + 96]:
                        revert with 0, 50
                    _460 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                    _464 = mem[64]
                    mem[mem[64] + 36] = address(stor[_435])
                    mem[mem[64] + 68] = _443
                    _466 = mem[64]
                    mem[mem[64]] = 68
                    mem[64] = mem[64] + 100
                    mem[_466 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_466 + 36 len 28]
                    mem[64] = _464 + 164
                    mem[_464 + 100] = 32
                    mem[_464 + 132] = 'SafeERC20: low-level call failed'
                    if not ext_code.size(address(_460)):
                        revert with 0, 'Address: call to non-contract'
                    _481 = mem[_466]
                    s = 0
                    while s < _481:
                        mem[s + _464 + 164] = mem[s + _466 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_481) <= _481:
                        call address(_460).mem[_464 + 164 len 4] with:
                             gas gas_remaining wei
                            args mem[_464 + 168 len _481 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                mem[_464 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_464 + 168] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _464 + 232] = mem[idx + _464 + 132]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_464 + 232]
                            if not mem[96]:
                                if idx >= mem[ceil32(return_data.size) + 96]:
                                    revert with 0, 50
                                _965 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                                mem[_464 + 164] = 0x47e7ef2400000000000000000000000000000000000000000000000000000000
                                mem[_464 + 168] = address(_965)
                                mem[_464 + 200] = _443
                                require ext_code.size(address(stor[_435]))
                                call address(stor[_435]).0x47e7ef24 with:
                                     gas gas_remaining wei
                                    args address(_965), _443
                            else:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                if idx >= mem[ceil32(return_data.size) + 96]:
                                    revert with 0, 50
                                _1073 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                                mem[_464 + 164] = 0x47e7ef2400000000000000000000000000000000000000000000000000000000
                                mem[_464 + 168] = address(_1073)
                                mem[_464 + 200] = _443
                                require ext_code.size(address(stor[_435]))
                                call address(stor[_435]).0x47e7ef24 with:
                                     gas gas_remaining wei
                                    args address(_1073), _443
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if mem[ceil32(return_data.size) + 96] < 1:
                                revert with 0, 17
                            if idx == mem[ceil32(return_data.size) + 96] - 1:
                                if gas_remaining < gas_remaining:
                                    revert with 0, 17
                                if False and block.gasprice > 0:
                                    revert with 0, 17
                                mem[_464 + 164] = 0
                                emit 0xdf7bdec6: 0
                        else:
                            mem[64] = _464 + ceil32(return_data.size) + 165
                            mem[_464 + 164] = return_data.size
                            mem[_464 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_464 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_464 + ceil32(return_data.size) + 169] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _464 + ceil32(return_data.size) + 233] = mem[idx + _464 + 132]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_464 + ceil32(return_data.size) + 233]
                            if not return_data.size:
                                if idx >= mem[ceil32(return_data.size) + 96]:
                                    revert with 0, 50
                                _967 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                                mem[_464 + ceil32(return_data.size) + 165] = 0x47e7ef2400000000000000000000000000000000000000000000000000000000
                                mem[_464 + ceil32(return_data.size) + 169] = address(_967)
                                mem[_464 + ceil32(return_data.size) + 201] = _443
                                require ext_code.size(address(stor[_435]))
                                call address(stor[_435]).0x47e7ef24 with:
                                     gas gas_remaining wei
                                    args address(_967), _443
                            else:
                                require return_data.size >= 32
                                require mem[_464 + 196] == bool(mem[_464 + 196])
                                if not mem[_464 + 196]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                if idx >= mem[ceil32(return_data.size) + 96]:
                                    revert with 0, 50
                                _1075 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                                mem[_464 + ceil32(return_data.size) + 165] = 0x47e7ef2400000000000000000000000000000000000000000000000000000000
                                mem[_464 + ceil32(return_data.size) + 169] = address(_1075)
                                mem[_464 + ceil32(return_data.size) + 201] = _443
                                require ext_code.size(address(stor[_435]))
                                call address(stor[_435]).0x47e7ef24 with:
                                     gas gas_remaining wei
                                    args address(_1075), _443
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if mem[ceil32(return_data.size) + 96] < 1:
                                revert with 0, 17
                            if idx == mem[ceil32(return_data.size) + 96] - 1:
                                if gas_remaining < gas_remaining:
                                    revert with 0, 17
                                if False and block.gasprice > 0:
                                    revert with 0, 17
                                mem[_464 + ceil32(return_data.size) + 165] = 0
                                emit 0xdf7bdec6: 0
                    else:
                        mem[_481 + _464 + 164] = 0
                        call address(_460).mem[_464 + 164 len 4] with:
                             gas gas_remaining wei
                            args mem[_464 + 168 len _481 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                mem[_464 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_464 + 168] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _464 + 232] = mem[idx + _464 + 132]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_464 + 232]
                            if not mem[96]:
                                if idx >= mem[ceil32(return_data.size) + 96]:
                                    revert with 0, 50
                                _969 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                                mem[_464 + 164] = 0x47e7ef2400000000000000000000000000000000000000000000000000000000
                                mem[_464 + 168] = address(_969)
                                mem[_464 + 200] = _443
                                require ext_code.size(address(stor[_435]))
                                call address(stor[_435]).0x47e7ef24 with:
                                     gas gas_remaining wei
                                    args address(_969), _443
                            else:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                if idx >= mem[ceil32(return_data.size) + 96]:
                                    revert with 0, 50
                                _1077 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                                mem[_464 + 164] = 0x47e7ef2400000000000000000000000000000000000000000000000000000000
                                mem[_464 + 168] = address(_1077)
                                mem[_464 + 200] = _443
                                require ext_code.size(address(stor[_435]))
                                call address(stor[_435]).0x47e7ef24 with:
                                     gas gas_remaining wei
                                    args address(_1077), _443
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if mem[ceil32(return_data.size) + 96] < 1:
                                revert with 0, 17
                            if idx == mem[ceil32(return_data.size) + 96] - 1:
                                if gas_remaining < gas_remaining:
                                    revert with 0, 17
                                if False and block.gasprice > 0:
                                    revert with 0, 17
                                mem[_464 + 164] = 0
                                emit 0xdf7bdec6: 0
                        else:
                            mem[64] = _464 + ceil32(return_data.size) + 165
                            mem[_464 + 164] = return_data.size
                            mem[_464 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_464 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_464 + ceil32(return_data.size) + 169] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _464 + ceil32(return_data.size) + 233] = mem[idx + _464 + 132]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_464 + ceil32(return_data.size) + 233]
                            if not return_data.size:
                                if idx >= mem[ceil32(return_data.size) + 96]:
                                    revert with 0, 50
                                _971 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                                mem[_464 + ceil32(return_data.size) + 165] = 0x47e7ef2400000000000000000000000000000000000000000000000000000000
                                mem[_464 + ceil32(return_data.size) + 169] = address(_971)
                                mem[_464 + ceil32(return_data.size) + 201] = _443
                                require ext_code.size(address(stor[_435]))
                                call address(stor[_435]).0x47e7ef24 with:
                                     gas gas_remaining wei
                                    args address(_971), _443
                            else:
                                require return_data.size >= 32
                                require mem[_464 + 196] == bool(mem[_464 + 196])
                                if not mem[_464 + 196]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                if idx >= mem[ceil32(return_data.size) + 96]:
                                    revert with 0, 50
                                _1079 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                                mem[_464 + ceil32(return_data.size) + 165] = 0x47e7ef2400000000000000000000000000000000000000000000000000000000
                                mem[_464 + ceil32(return_data.size) + 169] = address(_1079)
                                mem[_464 + ceil32(return_data.size) + 201] = _443
                                require ext_code.size(address(stor[_435]))
                                call address(stor[_435]).0x47e7ef24 with:
                                     gas gas_remaining wei
                                    args address(_1079), _443
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if mem[ceil32(return_data.size) + 96] < 1:
                                revert with 0, 17
                            if idx == mem[ceil32(return_data.size) + 96] - 1:
                                if gas_remaining < gas_remaining:
                                    revert with 0, 17
                                if False and block.gasprice > 0:
                                    revert with 0, 17
                                mem[_464 + ceil32(return_data.size) + 165] = 0
                                emit 0xdf7bdec6: 0
            else:
                if not sub_51d09e04[mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]]:
                    if _443 <= 0:
                        if _443 < 0:
                            if idx >= mem[ceil32(return_data.size) + 96]:
                                revert with 0, 50
                            _459 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                            if 0 < _443:
                                revert with 0, 17
                            mem[mem[64]] = 0xf3fef3a300000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = address(_459)
                            mem[mem[64] + 36] = -_443
                            require ext_code.size(address(stor[_435]))
                            call address(stor[_435]).0xf3fef3a3 with:
                                 gas gas_remaining wei
                                args address(_459), -_443
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        if mem[ceil32(return_data.size) + 96] < 1:
                            revert with 0, 17
                        if idx == mem[ceil32(return_data.size) + 96] - 1:
                            if gas_remaining < gas_remaining:
                                revert with 0, 17
                            if False and block.gasprice > 0:
                                revert with 0, 17
                            mem[mem[64]] = 0
                            emit 0xdf7bdec6: 0
                    else:
                        if _443 < 0:
                            revert with 0, 17
                        if idx >= mem[ceil32(return_data.size) + 96]:
                            revert with 0, 50
                        _465 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                        _470 = mem[64]
                        mem[mem[64] + 36] = address(stor[_435])
                        mem[mem[64] + 68] = _443
                        _472 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_472 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_472 + 36 len 28]
                        mem[64] = _470 + 164
                        mem[_470 + 100] = 32
                        mem[_470 + 132] = 'SafeERC20: low-level call failed'
                        if not ext_code.size(address(_465)):
                            revert with 0, 'Address: call to non-contract'
                        _487 = mem[_472]
                        s = 0
                        while s < _487:
                            mem[s + _470 + 164] = mem[s + _472 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_487) <= _487:
                            call address(_465).mem[_470 + 164 len 4] with:
                                 gas gas_remaining wei
                                args mem[_470 + 168 len _487 - 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96]:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    mem[_470 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_470 + 168] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _470 + 232] = mem[idx + _470 + 132]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_470 + 232]
                                if not mem[96]:
                                    if idx >= mem[ceil32(return_data.size) + 96]:
                                        revert with 0, 50
                                    _981 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                                    mem[_470 + 164] = 0x47e7ef2400000000000000000000000000000000000000000000000000000000
                                    mem[_470 + 168] = address(_981)
                                    mem[_470 + 200] = _443
                                    require ext_code.size(address(stor[_435]))
                                    call address(stor[_435]).0x47e7ef24 with:
                                         gas gas_remaining wei
                                        args address(_981), _443
                                else:
                                    require mem[96] >= 32
                                    require mem[128] == bool(mem[128])
                                    if not mem[128]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    if idx >= mem[ceil32(return_data.size) + 96]:
                                        revert with 0, 50
                                    _1089 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                                    mem[_470 + 164] = 0x47e7ef2400000000000000000000000000000000000000000000000000000000
                                    mem[_470 + 168] = address(_1089)
                                    mem[_470 + 200] = _443
                                    require ext_code.size(address(stor[_435]))
                                    call address(stor[_435]).0x47e7ef24 with:
                                         gas gas_remaining wei
                                        args address(_1089), _443
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if mem[ceil32(return_data.size) + 96] < 1:
                                    revert with 0, 17
                                if idx == mem[ceil32(return_data.size) + 96] - 1:
                                    if gas_remaining < gas_remaining:
                                        revert with 0, 17
                                    if False and block.gasprice > 0:
                                        revert with 0, 17
                                    mem[_470 + 164] = 0
                                    emit 0xdf7bdec6: 0
                            else:
                                mem[64] = _470 + ceil32(return_data.size) + 165
                                mem[_470 + 164] = return_data.size
                                mem[_470 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_470 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_470 + ceil32(return_data.size) + 169] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _470 + ceil32(return_data.size) + 233] = mem[idx + _470 + 132]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_470 + ceil32(return_data.size) + 233]
                                if not return_data.size:
                                    if idx >= mem[ceil32(return_data.size) + 96]:
                                        revert with 0, 50
                                    _983 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                                    mem[_470 + ceil32(return_data.size) + 165] = 0x47e7ef2400000000000000000000000000000000000000000000000000000000
                                    mem[_470 + ceil32(return_data.size) + 169] = address(_983)
                                    mem[_470 + ceil32(return_data.size) + 201] = _443
                                    require ext_code.size(address(stor[_435]))
                                    call address(stor[_435]).0x47e7ef24 with:
                                         gas gas_remaining wei
                                        args address(_983), _443
                                else:
                                    require return_data.size >= 32
                                    require mem[_470 + 196] == bool(mem[_470 + 196])
                                    if not mem[_470 + 196]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    if idx >= mem[ceil32(return_data.size) + 96]:
                                        revert with 0, 50
                                    _1091 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                                    mem[_470 + ceil32(return_data.size) + 165] = 0x47e7ef2400000000000000000000000000000000000000000000000000000000
                                    mem[_470 + ceil32(return_data.size) + 169] = address(_1091)
                                    mem[_470 + ceil32(return_data.size) + 201] = _443
                                    require ext_code.size(address(stor[_435]))
                                    call address(stor[_435]).0x47e7ef24 with:
                                         gas gas_remaining wei
                                        args address(_1091), _443
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if mem[ceil32(return_data.size) + 96] < 1:
                                    revert with 0, 17
                                if idx == mem[ceil32(return_data.size) + 96] - 1:
                                    if gas_remaining < gas_remaining:
                                        revert with 0, 17
                                    if False and block.gasprice > 0:
                                        revert with 0, 17
                                    mem[_470 + ceil32(return_data.size) + 165] = 0
                                    emit 0xdf7bdec6: 0
                        else:
                            mem[_487 + _470 + 164] = 0
                            call address(_465).mem[_470 + 164 len 4] with:
                                 gas gas_remaining wei
                                args mem[_470 + 168 len _487 - 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96]:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    mem[_470 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_470 + 168] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _470 + 232] = mem[idx + _470 + 132]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_470 + 232]
                                if not mem[96]:
                                    if idx >= mem[ceil32(return_data.size) + 96]:
                                        revert with 0, 50
                                    _985 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                                    mem[_470 + 164] = 0x47e7ef2400000000000000000000000000000000000000000000000000000000
                                    mem[_470 + 168] = address(_985)
                                    mem[_470 + 200] = _443
                                    require ext_code.size(address(stor[_435]))
                                    call address(stor[_435]).0x47e7ef24 with:
                                         gas gas_remaining wei
                                        args address(_985), _443
                                else:
                                    require mem[96] >= 32
                                    require mem[128] == bool(mem[128])
                                    if not mem[128]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    if idx >= mem[ceil32(return_data.size) + 96]:
                                        revert with 0, 50
                                    _1093 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                                    mem[_470 + 164] = 0x47e7ef2400000000000000000000000000000000000000000000000000000000
                                    mem[_470 + 168] = address(_1093)
                                    mem[_470 + 200] = _443
                                    require ext_code.size(address(stor[_435]))
                                    call address(stor[_435]).0x47e7ef24 with:
                                         gas gas_remaining wei
                                        args address(_1093), _443
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if mem[ceil32(return_data.size) + 96] < 1:
                                    revert with 0, 17
                                if idx == mem[ceil32(return_data.size) + 96] - 1:
                                    if gas_remaining < gas_remaining:
                                        revert with 0, 17
                                    if False and block.gasprice > 0:
                                        revert with 0, 17
                                    mem[_470 + 164] = 0
                                    emit 0xdf7bdec6: 0
                            else:
                                mem[64] = _470 + ceil32(return_data.size) + 165
                                mem[_470 + 164] = return_data.size
                                mem[_470 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_470 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_470 + ceil32(return_data.size) + 169] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _470 + ceil32(return_data.size) + 233] = mem[idx + _470 + 132]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_470 + ceil32(return_data.size) + 233]
                                if not return_data.size:
                                    if idx >= mem[ceil32(return_data.size) + 96]:
                                        revert with 0, 50
                                    _987 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                                    mem[_470 + ceil32(return_data.size) + 165] = 0x47e7ef2400000000000000000000000000000000000000000000000000000000
                                    mem[_470 + ceil32(return_data.size) + 169] = address(_987)
                                    mem[_470 + ceil32(return_data.size) + 201] = _443
                                    require ext_code.size(address(stor[_435]))
                                    call address(stor[_435]).0x47e7ef24 with:
                                         gas gas_remaining wei
                                        args address(_987), _443
                                else:
                                    require return_data.size >= 32
                                    require mem[_470 + 196] == bool(mem[_470 + 196])
                                    if not mem[_470 + 196]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    if idx >= mem[ceil32(return_data.size) + 96]:
                                        revert with 0, 50
                                    _1095 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                                    mem[_470 + ceil32(return_data.size) + 165] = 0x47e7ef2400000000000000000000000000000000000000000000000000000000
                                    mem[_470 + ceil32(return_data.size) + 169] = address(_1095)
                                    mem[_470 + ceil32(return_data.size) + 201] = _443
                                    require ext_code.size(address(stor[_435]))
                                    call address(stor[_435]).0x47e7ef24 with:
                                         gas gas_remaining wei
                                        args address(_1095), _443
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if mem[ceil32(return_data.size) + 96] < 1:
                                    revert with 0, 17
                                if idx == mem[ceil32(return_data.size) + 96] - 1:
                                    if gas_remaining < gas_remaining:
                                        revert with 0, 17
                                    if False and block.gasprice > 0:
                                        revert with 0, 17
                                    mem[_470 + ceil32(return_data.size) + 165] = 0
                                    emit 0xdf7bdec6: 0
                else:
                    if not sub_51d09e04[mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]]:
                        revert with 0, 18
                    if _443 + _449 > -5001 / sub_51d09e04[mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]]:
                        revert with 0, 'PercentageMath: MATH_MULTIPLICATION_OVERFLOW'
                    if _443 + _449 and sub_51d09e04[mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]] > -1 / _443 + _449:
                        revert with 0, 17
                    if (_443 * sub_51d09e04[mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]]) + (_449 * sub_51d09e04[mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]]) > -5001:
                        revert with 0, 17
                    if _443 <= (_443 * sub_51d09e04[mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]]) + (_449 * sub_51d09e04[mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]]) + 5000 / 10000:
                        if _443 < (_443 * sub_51d09e04[mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]]) + (_449 * sub_51d09e04[mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]]) + 5000 / 10000:
                            if idx >= mem[ceil32(return_data.size) + 96]:
                                revert with 0, 50
                            _543 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                            if (_443 * sub_51d09e04[mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]]) + (_449 * sub_51d09e04[mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]]) + 5000 / 10000 < _443:
                                revert with 0, 17
                            mem[mem[64]] = 0xf3fef3a300000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = address(_543)
                            mem[mem[64] + 36] = ((_443 * sub_51d09e04[mem[0]]) + (_449 * sub_51d09e04[mem[0]]) + 5000 / 10000) - _443
                            require ext_code.size(address(stor[_435]))
                            call address(stor[_435]).0xf3fef3a3 with:
                                 gas gas_remaining wei
                                args address(_543), ((_443 * sub_51d09e04[mem[0]]) + (_449 * sub_51d09e04[mem[0]]) + 5000 / 10000) - _443
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        if mem[ceil32(return_data.size) + 96] < 1:
                            revert with 0, 17
                        if idx == mem[ceil32(return_data.size) + 96] - 1:
                            if gas_remaining < gas_remaining:
                                revert with 0, 17
                            if False and block.gasprice > 0:
                                revert with 0, 17
                            mem[mem[64]] = 0
                            emit 0xdf7bdec6: 0
                    else:
                        if _443 < (_443 * sub_51d09e04[mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]]) + (_449 * sub_51d09e04[mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]]) + 5000 / 10000:
                            revert with 0, 17
                        if idx >= mem[ceil32(return_data.size) + 96]:
                            revert with 0, 50
                        _557 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                        _576 = mem[64]
                        mem[mem[64] + 36] = address(stor[_435])
                        mem[mem[64] + 68] = _443 - ((_443 * sub_51d09e04[mem[0]]) + (_449 * sub_51d09e04[mem[0]]) + 5000 / 10000)
                        _585 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_585 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_585 + 36 len 28]
                        mem[64] = _576 + 164
                        mem[_576 + 100] = 32
                        mem[_576 + 132] = 'SafeERC20: low-level call failed'
                        if not ext_code.size(address(_557)):
                            revert with 0, 'Address: call to non-contract'
                        _651 = mem[_585]
                        s = 0
                        while s < _651:
                            mem[s + _576 + 164] = mem[s + _585 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_651) <= _651:
                            call address(_557).mem[_576 + 164 len 4] with:
                                 gas gas_remaining wei
                                args mem[_576 + 168 len _651 - 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96]:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    mem[_576 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_576 + 168] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _576 + 232] = mem[idx + _576 + 132]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_576 + 232]
                                if not mem[96]:
                                    if idx >= mem[ceil32(return_data.size) + 96]:
                                        revert with 0, 50
                                    _973 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                                    mem[_576 + 164] = 0x47e7ef2400000000000000000000000000000000000000000000000000000000
                                    mem[_576 + 168] = address(_973)
                                    mem[_576 + 200] = _443 - ((_443 * sub_51d09e04[mem[0]]) + (_449 * sub_51d09e04[mem[0]]) + 5000 / 10000)
                                    require ext_code.size(address(stor[_435]))
                                    call address(stor[_435]).0x47e7ef24 with:
                                         gas gas_remaining wei
                                        args address(_973), _443 - ((_443 * sub_51d09e04[mem[0]]) + (_449 * sub_51d09e04[mem[0]]) + 5000 / 10000)
                                else:
                                    require mem[96] >= 32
                                    require mem[128] == bool(mem[128])
                                    if not mem[128]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    if idx >= mem[ceil32(return_data.size) + 96]:
                                        revert with 0, 50
                                    _1081 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                                    mem[_576 + 164] = 0x47e7ef2400000000000000000000000000000000000000000000000000000000
                                    mem[_576 + 168] = address(_1081)
                                    mem[_576 + 200] = _443 - ((_443 * sub_51d09e04[mem[0]]) + (_449 * sub_51d09e04[mem[0]]) + 5000 / 10000)
                                    require ext_code.size(address(stor[_435]))
                                    call address(stor[_435]).0x47e7ef24 with:
                                         gas gas_remaining wei
                                        args address(_1081), _443 - ((_443 * sub_51d09e04[mem[0]]) + (_449 * sub_51d09e04[mem[0]]) + 5000 / 10000)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if mem[ceil32(return_data.size) + 96] < 1:
                                    revert with 0, 17
                                if idx == mem[ceil32(return_data.size) + 96] - 1:
                                    if gas_remaining < gas_remaining:
                                        revert with 0, 17
                                    if False and block.gasprice > 0:
                                        revert with 0, 17
                                    mem[_576 + 164] = 0
                                    emit 0xdf7bdec6: 0
                            else:
                                mem[64] = _576 + ceil32(return_data.size) + 165
                                mem[_576 + 164] = return_data.size
                                mem[_576 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_576 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_576 + ceil32(return_data.size) + 169] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _576 + ceil32(return_data.size) + 233] = mem[idx + _576 + 132]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_576 + ceil32(return_data.size) + 233]
                                if not return_data.size:
                                    if idx >= mem[ceil32(return_data.size) + 96]:
                                        revert with 0, 50
                                    _975 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                                    mem[_576 + ceil32(return_data.size) + 165] = 0x47e7ef2400000000000000000000000000000000000000000000000000000000
                                    mem[_576 + ceil32(return_data.size) + 169] = address(_975)
                                    mem[_576 + ceil32(return_data.size) + 201] = _443 - ((_443 * uint256(stor[_452])) + (_449 * uint256(stor[_452])) + 5000 / 10000)
                                    require ext_code.size(address(stor[_435]))
                                    call address(stor[_435]).0x47e7ef24 with:
                                         gas gas_remaining wei
                                        args address(_975), _443 - ((_443 * uint256(stor[_452])) + (_449 * uint256(stor[_452])) + 5000 / 10000)
                                else:
                                    require return_data.size >= 32
                                    require mem[_576 + 196] == bool(mem[_576 + 196])
                                    if not mem[_576 + 196]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    if idx >= mem[ceil32(return_data.size) + 96]:
                                        revert with 0, 50
                                    _1083 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                                    mem[_576 + ceil32(return_data.size) + 165] = 0x47e7ef2400000000000000000000000000000000000000000000000000000000
                                    mem[_576 + ceil32(return_data.size) + 169] = address(_1083)
                                    mem[_576 + ceil32(return_data.size) + 201] = _443 - ((_443 * uint256(stor[_452])) + (_449 * uint256(stor[_452])) + 5000 / 10000)
                                    require ext_code.size(address(stor[_435]))
                                    call address(stor[_435]).0x47e7ef24 with:
                                         gas gas_remaining wei
                                        args address(_1083), _443 - ((_443 * uint256(stor[_452])) + (_449 * uint256(stor[_452])) + 5000 / 10000)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if mem[ceil32(return_data.size) + 96] < 1:
                                    revert with 0, 17
                                if idx == mem[ceil32(return_data.size) + 96] - 1:
                                    if gas_remaining < gas_remaining:
                                        revert with 0, 17
                                    if False and block.gasprice > 0:
                                        revert with 0, 17
                                    mem[_576 + ceil32(return_data.size) + 165] = 0
                                    emit 0xdf7bdec6: 0
                        else:
                            mem[_651 + _576 + 164] = 0
                            call address(_557).mem[_576 + 164 len 4] with:
                                 gas gas_remaining wei
                                args mem[_576 + 168 len _651 - 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96]:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    mem[_576 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_576 + 168] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _576 + 232] = mem[idx + _576 + 132]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_576 + 232]
                                if not mem[96]:
                                    if idx >= mem[ceil32(return_data.size) + 96]:
                                        revert with 0, 50
                                    _977 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                                    mem[_576 + 164] = 0x47e7ef2400000000000000000000000000000000000000000000000000000000
                                    mem[_576 + 168] = address(_977)
                                    mem[_576 + 200] = _443 - ((_443 * sub_51d09e04[mem[0]]) + (_449 * sub_51d09e04[mem[0]]) + 5000 / 10000)
                                    require ext_code.size(address(stor[_435]))
                                    call address(stor[_435]).0x47e7ef24 with:
                                         gas gas_remaining wei
                                        args address(_977), _443 - ((_443 * sub_51d09e04[mem[0]]) + (_449 * sub_51d09e04[mem[0]]) + 5000 / 10000)
                                else:
                                    require mem[96] >= 32
                                    require mem[128] == bool(mem[128])
                                    if not mem[128]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    if idx >= mem[ceil32(return_data.size) + 96]:
                                        revert with 0, 50
                                    _1085 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                                    mem[_576 + 164] = 0x47e7ef2400000000000000000000000000000000000000000000000000000000
                                    mem[_576 + 168] = address(_1085)
                                    mem[_576 + 200] = _443 - ((_443 * sub_51d09e04[mem[0]]) + (_449 * sub_51d09e04[mem[0]]) + 5000 / 10000)
                                    require ext_code.size(address(stor[_435]))
                                    call address(stor[_435]).0x47e7ef24 with:
                                         gas gas_remaining wei
                                        args address(_1085), _443 - ((_443 * sub_51d09e04[mem[0]]) + (_449 * sub_51d09e04[mem[0]]) + 5000 / 10000)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if mem[ceil32(return_data.size) + 96] < 1:
                                    revert with 0, 17
                                if idx == mem[ceil32(return_data.size) + 96] - 1:
                                    if gas_remaining < gas_remaining:
                                        revert with 0, 17
                                    if False and block.gasprice > 0:
                                        revert with 0, 17
                                    mem[_576 + 164] = 0
                                    emit 0xdf7bdec6: 0
                            else:
                                mem[64] = _576 + ceil32(return_data.size) + 165
                                mem[_576 + 164] = return_data.size
                                mem[_576 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_576 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_576 + ceil32(return_data.size) + 169] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _576 + ceil32(return_data.size) + 233] = mem[idx + _576 + 132]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_576 + ceil32(return_data.size) + 233]
                                if not return_data.size:
                                    if idx >= mem[ceil32(return_data.size) + 96]:
                                        revert with 0, 50
                                    _979 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                                    mem[_576 + ceil32(return_data.size) + 165] = 0x47e7ef2400000000000000000000000000000000000000000000000000000000
                                    mem[_576 + ceil32(return_data.size) + 169] = address(_979)
                                    mem[_576 + ceil32(return_data.size) + 201] = _443 - ((_443 * uint256(stor[_452])) + (_449 * uint256(stor[_452])) + 5000 / 10000)
                                    require ext_code.size(address(stor[_435]))
                                    call address(stor[_435]).0x47e7ef24 with:
                                         gas gas_remaining wei
                                        args address(_979), _443 - ((_443 * uint256(stor[_452])) + (_449 * uint256(stor[_452])) + 5000 / 10000)
                                else:
                                    require return_data.size >= 32
                                    require mem[_576 + 196] == bool(mem[_576 + 196])
                                    if not mem[_576 + 196]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    if idx >= mem[ceil32(return_data.size) + 96]:
                                        revert with 0, 50
                                    _1087 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                                    mem[_576 + ceil32(return_data.size) + 165] = 0x47e7ef2400000000000000000000000000000000000000000000000000000000
                                    mem[_576 + ceil32(return_data.size) + 169] = address(_1087)
                                    mem[_576 + ceil32(return_data.size) + 201] = _443 - ((_443 * uint256(stor[_452])) + (_449 * uint256(stor[_452])) + 5000 / 10000)
                                    require ext_code.size(address(stor[_435]))
                                    call address(stor[_435]).0x47e7ef24 with:
                                         gas gas_remaining wei
                                        args address(_1087), _443 - ((_443 * uint256(stor[_452])) + (_449 * uint256(stor[_452])) + 5000 / 10000)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if mem[ceil32(return_data.size) + 96] < 1:
                                    revert with 0, 17
                                if idx == mem[ceil32(return_data.size) + 96] - 1:
                                    if gas_remaining < gas_remaining:
                                        revert with 0, 17
                                    if False and block.gasprice > 0:
                                        revert with 0, 17
                                    mem[_576 + ceil32(return_data.size) + 165] = 0
                                    emit 0xdf7bdec6: 0
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
}



}
