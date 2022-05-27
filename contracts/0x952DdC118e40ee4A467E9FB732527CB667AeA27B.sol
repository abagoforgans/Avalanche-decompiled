contract main {




// =====================  Runtime code  =====================


#
#  - sub_09075d57(?)
#  - sub_a117e33a(?)
#
const SIGNATURE_LENGTH = 65

const RELAYER_ROLE = 0xfee2b7fb3b832174769106daebcfd6d1970523240dda11281102db9363b83b0d

const DEFAULT_ADMIN_ROLE = 0

const VALIDATOR_ROLE = 0x21702c8af46127c7fa207f89d0b0a8441bb32959a0ac7df790e9ab1a25c98926

const OWNER_ROLE = 0xb19546dff01e856fb3f010c267a7b1c60363cf8a4664e21cc89c26224620214e

const MANAGER_ROLE = 0x241ecf16d79d0f8dbfb92cbc07fe17840425976cf0667f022fe9877caa831b08


mapping of struct roleAdmin;
uint8 stor1;
uint128 stor1;
uint128 numOfThisBlockchain; offset 8
address sub_f33096d8Address;
mapping of address sub_2dd39c55;
mapping of uint8 stor4;
mapping of uint256 sub_14d74858;
mapping of uint256 sub_e14ad02d;
mapping of uint256 processedTransactions;
uint256 sub_12b57cea;
uint256 sub_9294a030;
uint256 maxTokenAmount;
uint256 maxGasPrice;
uint256 sub_8ce74cd0;
uint256 sub_a39140c5;
uint256 sub_cfe6a3a5;
mapping of uint8 stor113518572814335829837163531782652513058928013890916618705479183088269684699637;

function sub_12b57cea(?) {
    return sub_12b57cea
}

function sub_14d74858(?) {
    require calldata.size - 4 >= 32
    return sub_14d74858[arg1]
}

function getRoleAdmin(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_256
}

function sub_2dd39c55(?) {
    require calldata.size - 4 >= 32
    return uint256(sub_2dd39c55[arg1])
}

function maxGasPrice() {
    return maxGasPrice
}

function isRelayer(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(storFAF9[address(arg1)])
}

function paused() {
    return bool(uint8(stor1.field_0))
}

function sub_89affc9c(?) {
    require calldata.size - 4 >= 32
    return bool(stor4[arg1])
}

function maxTokenAmount() {
    return maxTokenAmount
}

function sub_8ce74cd0(?) {
    return sub_8ce74cd0
}

function hasRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return bool(roleAdmin[arg1][address(arg2)].field_0)
}

function sub_9294a030(?) {
    return sub_9294a030
}

function sub_a39140c5(?) {
    return sub_a39140c5
}

function processedTransactions(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return processedTransactions[arg1]
}

function numOfThisBlockchain() {
    return numOfThisBlockchain
}

function sub_cfe6a3a5(?) {
    return sub_cfe6a3a5
}

function sub_e14ad02d(?) {
    require calldata.size - 4 >= 32
    return sub_e14ad02d[arg1]
}

function sub_f33096d8(?) {
    return sub_f33096d8Address
}

function isValidator(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(roleAdmin[0x21702c8af46127c7fa207f89d0b0a8441bb32959a0ac7df790e9ab1a25c98926][address(arg1)].field_0)
}

function _fallback() payable {
    revert
}

function sub_213feaf5(?) {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    return sha3(address(arg1), arg2, arg3, arg4)
}

function toEthSignedMessageHash(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, arg1)
}

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if 0x7965db0b00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function renounceRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if arg2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: can only renounce roles for self'
    if roleAdmin[arg1][address(arg2)].field_0:
        roleAdmin[arg1][address(arg2)].field_0 = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
}

function sub_4d832750(?) {
    require calldata.size - 4 >= 96
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 97 < 96 or ceil32(ceil32(arg2.length)) + 97 > test266151307():
        revert with 0, 65
    require arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    if Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 192, ('param', 'arg3')), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 192, ('param', 'arg3')), 32))), 0) - 256 >= 27:
        return 0
    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, arg1), 27, mem[arg3 + 128], mem[arg3 + 160]) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    return address(signer)
}

function revokeRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0:
        if roleAdmin[arg1][address(arg2)].field_0:
            roleAdmin[arg1][address(arg2)].field_0 = 0
            emit RoleRevoked(arg1, arg2, msg.sender);
    mem[128 len 42] = call.data[calldata.size len 42]
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 42:
            revert with 0, 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if msg.sender + 10240:
        revert with 0, 'Strings: hex length insufficient'
    mem[224 len 66] = call.data[calldata.size len 66]
    idx = 65
    s = roleAdmin[arg1].field_256
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 66:
            revert with 0, 50
        mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if roleAdmin[arg1].field_256 + 16384:
        revert with 0, 'Strings: hex length insufficient'
    revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
}

function grantRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0:
        if not roleAdmin[arg1][address(arg2)].field_0:
            roleAdmin[arg1][address(arg2)].field_0 = 1
            emit RoleGranted(arg1, arg2, msg.sender);
    mem[128 len 42] = call.data[calldata.size len 42]
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 42:
            revert with 0, 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if msg.sender + 10240:
        revert with 0, 'Strings: hex length insufficient'
    mem[224 len 66] = call.data[calldata.size len 66]
    idx = 65
    s = roleAdmin[arg1].field_256
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 66:
            revert with 0, 50
        mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if roleAdmin[arg1].field_256 + 16384:
        revert with 0, 'Strings: hex length insufficient'
    revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
}

function sub_21e1249e(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require calldata.size + -cd[4] - 4 >= 192
    require ('cd', 4).length == address(('cd', 4).length)
    mem[96] = ('cd', 4).length
    mem[128] = ('cd', 4)[0]
    mem[160] = ('cd', 4)[1]
    require ('cd', 4)[2] <= test266151307()
    require cd[4] + ('cd', 4)[2] + 35 < calldata.size
    if cd[(cd[4] + ('cd', 4)[2] + 4)] > test266151307():
        revert with 0, 65
    if ceil32(32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + 289 < 288 or ceil32(32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + 289 > test266151307():
        revert with 0, 65
    mem[288] = cd[(cd[4] + ('cd', 4)[2] + 4)]
    require cd[4] + ('cd', 4)[2] + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + 36 <= calldata.size
    idx = 0
    s = cd[4] + ('cd', 4)[2] + 36
    t = 320
    while idx < cd[(cd[4] + ('cd', 4)[2] + 4)]:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[192] = 288
    mem[224] = ('cd', 4)[3]
    require ('cd', 4)[4] <= test266151307()
    require cd[4] + ('cd', 4)[4] + 35 < calldata.size
    if cd[(cd[4] + ('cd', 4)[4] + 4)] > test266151307():
        revert with 0, 65
    if ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + 290 < 289 or ceil32(32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + 290 > test266151307():
        revert with 0, 65
    mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + 289] = cd[(cd[4] + ('cd', 4)[4] + 4)]
    require cd[4] + ('cd', 4)[4] + cd[(cd[4] + ('cd', 4)[4] + 4)] + 36 <= calldata.size
    mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + 321 len cd[(cd[4] + ('cd', 4)[4] + 4)]] = call.data[cd[4] + ('cd', 4)[4] + 36 len cd[(cd[4] + ('cd', 4)[4] + 4)]]
    mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + cd[(cd[4] + ('cd', 4)[4] + 4)] + 321] = 0
    mem[256] = ceil32(32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + 289
    if not roleAdmin[0xfee2b7fb3b832174769106daebcfd6d1970523240dda11281102db9363b83b0d][address(msg.sender)].field_0:
        revert with 0, 'swapContract: Caller is not in relayer role'
    if uint8(stor1.field_0):
        revert with 0, 'Pausable: paused'
    if ('cd', 4)[0] < sub_9294a030:
        revert with 0, 'swapContract: Not enough amount of tokens'
    if ('cd', 4)[0] > maxTokenAmount:
        revert with 0, 'swapContract: Too many RBC requested'
    if cd[(cd[4] + ('cd', 4)[2] + 4)] <= 0:
        revert with 0, 'swapContract: path length must be greater than 1'
    if not cd[(cd[4] + ('cd', 4)[2] + 4)]:
        revert with 0, 50
    if mem[332 len 20] != address(sub_2dd39c55[uint128(stor1.field_0)]):
        revert with 0, 'swapContract: the first address in the path must be Rubic'
    if not address(('cd', 4).length):
        revert with 0, 'swapContract: Address cannot be zero address'
    if cd[(cd[4] + ('cd', 4)[4] + 4)] % 65:
        revert with 0, 'swapContract: Signatures lengths must be divisible by 65'
    if cd[(cd[4] + ('cd', 4)[4] + 4)] / 65 < sub_12b57cea:
        revert with 0, 'swapContract: Not enough signatures passed'
    mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + 322] = address(('cd', 4).length)
    mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + 342] = ('cd', 4)[0]
    mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + 374] = ('cd', 4)[3]
    mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + 406] = numOfThisBlockchain
    mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + 290] = 116
    mem[0] = ('cd', 4)[3]
    mem[32] = 7
    if processedTransactions[('cd', 4)[3]]:
        revert with 0, 'swapContract: Transaction already processed'
    if cd[(cd[4] + ('cd', 4)[4] + 4)] / 65 > test266151307():
        revert with 0, 65
    mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + 438] = cd[(cd[4] + ('cd', 4)[4] + 4)] / 65
    mem[64] = ceil32(32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)] / 65) + 470
    if not cd[(cd[4] + ('cd', 4)[4] + 4)] / 65:
        idx = 0
        while idx < cd[(cd[4] + ('cd', 4)[4] + 4)] / 65:
            if idx and 65 > -1 / idx:
                revert with 0, 17
            _269 = mem[(65 * idx) + ceil32(32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + 321]
            _270 = mem[(65 * idx) + ceil32(32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + 353]
            if Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 385, ('mul', 65, ('var', 0)), ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 256, 0, 5, ('cd', ('add', 4, ('cd', 4), ('cd', ('add', 100, ('cd', 4))))))))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 385, ('mul', 65, ('var', 0)), ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 256, 0, 5, ('cd', ('add', 4, ('cd', 4), ('cd', ('add', 100, ('cd', 4))))))))), 32))), 0) - 256 >= 27:
                mem[0] = 0
                mem[32] = sha3(0x21702c8af46127c7fa207f89d0b0a8441bb32959a0ac7df790e9ab1a25c98926, 0)
                if not roleAdmin[0x21702c8af46127c7fa207f89d0b0a8441bb32959a0ac7df790e9ab1a25c98926][0].field_0:
                    revert with 0, 'swapContract: Validator address not in whitelist'
                s = 0
                while s < idx:
                    if s >= mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + 438]:
                        revert with 0, 50
                    if 0 == mem[(32 * s) + ceil32(32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + 482 len 20]:
                        revert with 0, 'swapContract: Validator address is duplicated'
                    if s == -1:
                        revert with 0, 17
                    s = s + 1
                    continue 
                if idx >= mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + 438]:
                    revert with 0, 50
                mem[(32 * idx) + ceil32(32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + 470] = 0
            else:
                _284 = mem[64]
                mem[mem[64] + 32] = '\x19Ethereum Signed Message:\n32'
                mem[mem[64] + 60] = sha3(address(('cd', 4).length), ('cd', 4)[0], ('cd', 4)[3], numOfThisBlockchain)
                _285 = mem[64]
                mem[mem[64]] = 60
                mem[64] = mem[64] + 92
                _287 = sha3(mem[_285 + 32 len mem[_285]])
                mem[_284 + 92] = 0
                mem[64] = _284 + 124
                mem[_284 + 124] = _287
                mem[_284 + 156] = 27
                mem[_284 + 188] = _269
                mem[_284 + 220] = _270
                signer = erecover(_287, 27, _269, _270) 
                mem[_284 + 92] = signer
                if not erecover.result:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[0] = address(signer)
                mem[32] = sha3(0x21702c8af46127c7fa207f89d0b0a8441bb32959a0ac7df790e9ab1a25c98926, 0)
                if not roleAdmin[0x21702c8af46127c7fa207f89d0b0a8441bb32959a0ac7df790e9ab1a25c98926][address(signer)].field_0:
                    revert with 0, 'swapContract: Validator address not in whitelist'
                s = 0
                while s < idx:
                    if s >= mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + 438]:
                        revert with 0, 50
                    if address(signer) == mem[(32 * s) + ceil32(32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + 482 len 20]:
                        revert with 0, 'swapContract: Validator address is duplicated'
                    if s == -1:
                        revert with 0, 17
                    s = s + 1
                    continue 
                if idx >= mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + 438]:
                    revert with 0, 50
                mem[(32 * idx) + ceil32(32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + 470] = address(signer)
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[0] = ('cd', 4)[3]
        mem[32] = 7
        processedTransactions[('cd', 4)[3]] = 1
        _267 = mem[128]
        if 10^6 > !sub_a39140c5:
            revert with 0, 17
        if mulmod(mem[128], sub_a39140c5 + 10^6, -1) - (10^6 * mem[128]) - (sub_a39140c5 * mem[128]) - (mulmod(mem[128], sub_a39140c5 + 10^6, -1) < (10^6 * mem[128]) + (sub_a39140c5 * mem[128])) != 0:
            require 10^6 > mulmod(mem[128], sub_a39140c5 + 10^6, -1) - (10^6 * mem[128]) - (sub_a39140c5 * mem[128]) - (mulmod(mem[128], sub_a39140c5 + 10^6, -1) < (10^6 * mem[128]) + (sub_a39140c5 * mem[128]))
            revert with 0, 17
        _275 = mem[160]
        _276 = mem[192]
        _277 = mem[96]
        mem[mem[64]] = 0x4a25d94a00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _275
        mem[mem[64] + 36] = (10^6 * _267) + (sub_a39140c5 * _267) / 10^6
        mem[mem[64] + 68] = 160
        _283 = mem[_276]
        mem[mem[64] + 164] = mem[_276]
        idx = 0
        s = _276 + 32
        t = mem[64] + 196
        while idx < _283:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 100] = address(_277)
        mem[mem[64] + 132] = block.timestamp
        require ext_code.size(sub_f33096d8Address)
        call sub_f33096d8Address.swapTokensForExactETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args _275, (10^6 * _267) + (sub_a39140c5 * _267) / 10^6, 160, address(_277), block.timestamp, mem[mem[64] + 164 len (32 * _283) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _387 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _389 = mem[_387]
        require mem[_387] <= test266151307()
        require _387 + return_data.size > _387 + mem[_387] + 31
        _391 = mem[_387 + mem[_387]]
        if mem[_387 + mem[_387]] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[_387 + mem[_387]]) + 1 < 0 or _387 + ceil32(return_data.size) + ceil32(32 * mem[_387 + mem[_387]]) + 1 > test266151307():
            revert with 0, 65
        mem[64] = _387 + ceil32(return_data.size) + ceil32(32 * mem[_387 + mem[_387]]) + 1
        mem[_387 + ceil32(return_data.size)] = _391
        require _389 + (32 * _391) + 32 <= return_data.size
        mem[_387 + ceil32(return_data.size) + 32 len 32 * _391] = mem[_387 + _389 + 32 len 32 * _391]
        if 0 >= _391:
            revert with 0, 50
        _413 = mem[_387 + ceil32(return_data.size) + 32]
        _415 = mem[224]
        mem[mem[64]] = mem[108 len 20]
        mem[mem[64] + 64] = _413
        mem[mem[64] + 96] = _415
        emit userRefunded(mem[mem[64]], _413, _413, _415);
    else:
        mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + 470 len 32 * cd[(cd[4] + ('cd', 4)[4] + 4)] / 65] = call.data[calldata.size len 32 * cd[(cd[4] + ('cd', 4)[4] + 4)] / 65]
        idx = 0
        while idx < cd[(cd[4] + ('cd', 4)[4] + 4)] / 65:
            if idx and 65 > -1 / idx:
                revert with 0, 17
            _272 = mem[(65 * idx) + ceil32(32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + 321]
            _273 = mem[(65 * idx) + ceil32(32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + 353]
            if Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 385, ('mul', 65, ('var', 0)), ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 256, 0, 5, ('cd', ('add', 4, ('cd', 4), ('cd', ('add', 100, ('cd', 4))))))))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 385, ('mul', 65, ('var', 0)), ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 256, 0, 5, ('cd', ('add', 4, ('cd', 4), ('cd', ('add', 100, ('cd', 4))))))))), 32))), 0) - 256 >= 27:
                mem[0] = 0
                mem[32] = sha3(0x21702c8af46127c7fa207f89d0b0a8441bb32959a0ac7df790e9ab1a25c98926, 0)
                if not roleAdmin[0x21702c8af46127c7fa207f89d0b0a8441bb32959a0ac7df790e9ab1a25c98926][0].field_0:
                    revert with 0, 'swapContract: Validator address not in whitelist'
                s = 0
                while s < idx:
                    if s >= mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + 438]:
                        revert with 0, 50
                    if 0 == mem[(32 * s) + ceil32(32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + 482 len 20]:
                        revert with 0, 'swapContract: Validator address is duplicated'
                    if s == -1:
                        revert with 0, 17
                    s = s + 1
                    continue 
                if idx >= mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + 438]:
                    revert with 0, 50
                mem[(32 * idx) + ceil32(32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + 470] = 0
            else:
                _289 = mem[64]
                mem[mem[64] + 32] = '\x19Ethereum Signed Message:\n32'
                mem[mem[64] + 60] = sha3(address(('cd', 4).length), ('cd', 4)[0], ('cd', 4)[3], numOfThisBlockchain)
                _290 = mem[64]
                mem[mem[64]] = 60
                mem[64] = mem[64] + 92
                _292 = sha3(mem[_290 + 32 len mem[_290]])
                mem[_289 + 92] = 0
                mem[64] = _289 + 124
                mem[_289 + 124] = _292
                mem[_289 + 156] = 27
                mem[_289 + 188] = _272
                mem[_289 + 220] = _273
                signer = erecover(_292, 27, _272, _273) 
                mem[_289 + 92] = signer
                if not erecover.result:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[0] = address(signer)
                mem[32] = sha3(0x21702c8af46127c7fa207f89d0b0a8441bb32959a0ac7df790e9ab1a25c98926, 0)
                if not roleAdmin[0x21702c8af46127c7fa207f89d0b0a8441bb32959a0ac7df790e9ab1a25c98926][address(signer)].field_0:
                    revert with 0, 'swapContract: Validator address not in whitelist'
                s = 0
                while s < idx:
                    if s >= mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + 438]:
                        revert with 0, 50
                    if address(signer) == mem[(32 * s) + ceil32(32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + 482 len 20]:
                        revert with 0, 'swapContract: Validator address is duplicated'
                    if s == -1:
                        revert with 0, 17
                    s = s + 1
                    continue 
                if idx >= mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + 438]:
                    revert with 0, 50
                mem[(32 * idx) + ceil32(32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + 470] = address(signer)
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[0] = ('cd', 4)[3]
        mem[32] = 7
        processedTransactions[('cd', 4)[3]] = 1
        _268 = mem[128]
        if 10^6 > !sub_a39140c5:
            revert with 0, 17
        if mulmod(mem[128], sub_a39140c5 + 10^6, -1) - (10^6 * mem[128]) - (sub_a39140c5 * mem[128]) - (mulmod(mem[128], sub_a39140c5 + 10^6, -1) < (10^6 * mem[128]) + (sub_a39140c5 * mem[128])) != 0:
            require 10^6 > mulmod(mem[128], sub_a39140c5 + 10^6, -1) - (10^6 * mem[128]) - (sub_a39140c5 * mem[128]) - (mulmod(mem[128], sub_a39140c5 + 10^6, -1) < (10^6 * mem[128]) + (sub_a39140c5 * mem[128]))
            revert with 0, 17
        _279 = mem[160]
        _280 = mem[192]
        _281 = mem[96]
        mem[mem[64]] = 0x4a25d94a00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _279
        mem[mem[64] + 36] = (10^6 * _268) + (sub_a39140c5 * _268) / 10^6
        mem[mem[64] + 68] = 160
        _288 = mem[_280]
        mem[mem[64] + 164] = mem[_280]
        idx = 0
        s = _280 + 32
        t = mem[64] + 196
        while idx < _288:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 100] = address(_281)
        mem[mem[64] + 132] = block.timestamp
        require ext_code.size(sub_f33096d8Address)
        call sub_f33096d8Address.swapTokensForExactETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args _279, (10^6 * _268) + (sub_a39140c5 * _268) / 10^6, 160, address(_281), block.timestamp, mem[mem[64] + 164 len (32 * _288) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _388 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _390 = mem[_388]
        require mem[_388] <= test266151307()
        require _388 + return_data.size > _388 + mem[_388] + 31
        _392 = mem[_388 + mem[_388]]
        if mem[_388 + mem[_388]] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[_388 + mem[_388]]) + 1 < 0 or _388 + ceil32(return_data.size) + ceil32(32 * mem[_388 + mem[_388]]) + 1 > test266151307():
            revert with 0, 65
        mem[64] = _388 + ceil32(return_data.size) + ceil32(32 * mem[_388 + mem[_388]]) + 1
        mem[_388 + ceil32(return_data.size)] = _392
        require _390 + (32 * _392) + 32 <= return_data.size
        mem[_388 + ceil32(return_data.size) + 32 len 32 * _392] = mem[_388 + _390 + 32 len 32 * _392]
        if 0 >= _392:
            revert with 0, 50
        _417 = mem[_388 + ceil32(return_data.size) + 32]
        _419 = mem[224]
        mem[mem[64]] = mem[108 len 20]
        mem[mem[64] + 64] = _417
        mem[mem[64] + 96] = _419
        emit userRefunded(mem[mem[64]], _417, _417, _419);
}

function sub_df118e93(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require calldata.size + -cd[4] - 4 >= 352
    mem[96] = ('cd', 4).length
    mem[128] = ('cd', 4)[0]
    require ('cd', 4)[1] <= test266151307()
    require cd[4] + ('cd', 4)[1] + 35 < calldata.size
    if cd[(cd[4] + ('cd', 4)[1] + 4)] > test266151307():
        revert with 0, 65
    if ceil32(32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + 449 < 448 or ceil32(32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + 449 > test266151307():
        revert with 0, 65
    mem[448] = cd[(cd[4] + ('cd', 4)[1] + 4)]
    require cd[4] + ('cd', 4)[1] + (32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + 36 <= calldata.size
    idx = 0
    s = cd[4] + ('cd', 4)[1] + 36
    t = 480
    while idx < cd[(cd[4] + ('cd', 4)[1] + 4)]:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[160] = 448
    require ('cd', 4)[2] <= test266151307()
    require cd[4] + ('cd', 4)[2] + 35 < calldata.size
    if cd[(cd[4] + ('cd', 4)[2] + 4)] > test266151307():
        revert with 0, 65
    if ceil32(32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + 450 < 449 or ceil32(32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + 450 > test266151307():
        revert with 0, 65
    mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + 449] = cd[(cd[4] + ('cd', 4)[2] + 4)]
    require cd[4] + ('cd', 4)[2] + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + 36 <= calldata.size
    idx = 0
    s = cd[4] + ('cd', 4)[2] + 36
    t = ceil32(32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + 481
    while idx < cd[(cd[4] + ('cd', 4)[2] + 4)]:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[192] = ceil32(32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + 449
    mem[224] = ('cd', 4)[3]
    mem[256] = ('cd', 4)[4]
    mem[288] = ('cd', 4)[5]
    require ('cd', 4)[6] == bool(('cd', 4)[6])
    mem[320] = ('cd', 4)[6]
    require ('cd', 4)[7] == bool(('cd', 4)[7])
    mem[352] = ('cd', 4)[7]
    require ('cd', 4)[8] == bool(('cd', 4)[8])
    mem[384] = ('cd', 4)[8]
    require ('cd', 4)[9] <= test266151307()
    require cd[4] + ('cd', 4)[9] + 35 < calldata.size
    if cd[(cd[4] + ('cd', 4)[9] + 4)] > test266151307():
        revert with 0, 65
    if ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + 451 < 450 or ceil32(32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + 451 > test266151307():
        revert with 0, 65
    mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + 450] = cd[(cd[4] + ('cd', 4)[9] + 4)]
    require cd[4] + ('cd', 4)[9] + cd[(cd[4] + ('cd', 4)[9] + 4)] + 36 <= calldata.size
    mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + 482 len cd[(cd[4] + ('cd', 4)[9] + 4)]] = call.data[cd[4] + ('cd', 4)[9] + 36 len cd[(cd[4] + ('cd', 4)[9] + 4)]]
    mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + cd[(cd[4] + ('cd', 4)[9] + 4)] + 482] = 0
    mem[416] = ceil32(32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + 450
    if uint8(stor1.field_0):
        revert with 0, 'Pausable: paused'
    if not ('cd', 4)[5]:
        revert with 0, 'swapContract: No destination address provided'
    if not stor4[('cd', 4).length]:
        revert with 0, 'swapContract: Wrong choose of blockchain'
    if numOfThisBlockchain == ('cd', 4).length:
        revert with 0, 'swapContract: Wrong choose of blockchain'
    if cd[(cd[4] + ('cd', 4)[1] + 4)] <= 0:
        revert with 0, 'swapContract: firsPath length must be greater than 1'
    if cd[(cd[4] + ('cd', 4)[2] + 4)] <= 0:
        revert with 0, 'swapContract: secondPath length must be greater than 1'
    if cd[(cd[4] + ('cd', 4)[1] + 4)] < 1:
        revert with 0, 17
    if cd[(cd[4] + ('cd', 4)[1] + 4)] - 1 >= cd[(cd[4] + ('cd', 4)[1] + 4)]:
        revert with 0, 50
    if mem[(32 * cd[(cd[4] + ('cd', 4)[1] + 4)] - 1) + 492 len 20] != address(sub_2dd39c55[uint128(stor1.field_0)]):
        revert with 0, 'swapContract: the last address in the firstPath must be Rubic'
    if not cd[(cd[4] + ('cd', 4)[2] + 4)]:
        revert with 0, 50
    if mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + 481] != uint256(sub_2dd39c55[('cd', 4).length]):
        revert with 0, 'swapContract: the first address in the secondPath must be Rubic'
    if ('cd', 4)[3] < sub_9294a030:
        revert with 0, 'swapContract: Not enough amount of tokens'
    if msg.value < sub_e14ad02d[('cd', 4).length]:
        revert with 0, 'swapContract: Not enough crypto provided'
    mem[0] = ('cd', 4).length
    mem[32] = 6
    if msg.value < sub_e14ad02d[('cd', 4).length]:
        revert with 0, 17
    if ('cd', 4)[7]:
        mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + 451] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
        mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + 455] = ('cd', 4)[3]
        mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + 487] = 128
        mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + 583] = cd[(cd[4] + ('cd', 4)[1] + 4)]
        idx = 0
        s = 480
        t = ceil32(32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + 615
        while idx < cd[(cd[4] + ('cd', 4)[1] + 4)]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + 519] = this.address
        mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + 551] = block.timestamp
        require ext_code.size(sub_f33096d8Address)
        call sub_f33096d8Address.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
           value msg.value - sub_e14ad02d[('cd', 4).length] wei
             gas gas_remaining wei
            args ('cd', 4)[3], Array(len=cd[(cd[4] + ('cd', 4)[1] + 4)], data=mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + 615 len 32 * cd[(cd[4] + ('cd', 4)[1] + 4)]]), address(this.address), block.timestamp
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + 451 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + 451
        require return_data.size >= 32
        _342 = mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + 451 len 4], Mask(224, 32, ('cd', 4)[3]) >> 32
        require mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + 451 len 4], Mask(224, 32, ('cd', 4)[3]) >> 32 <= test266151307()
        require ceil32(32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + return_data.size + 451 > ceil32(32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + 451 len 4], Mask(224, 32, ('cd', 4)[3]) >> 32 + 482
        _344 = mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + 451 len 4], Mask(224, 32, ('cd', 4)[3]) >> 32 + 451]
        if mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + 451 len 4], Mask(224, 32, ('cd', 4)[3]) >> 32 + 451] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + 451 len 4], Mask(224, 32, ('cd', 4)[3]) >> 32 + 451]) + 1 < 0 or ceil32(32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + ceil32(32 * mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + 451 len 4], Mask(224, 32, ('cd', 4)[3]) >> 32 + 451]) + 452 > test266151307():
            revert with 0, 65
        mem[64] = ceil32(32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + ceil32(32 * mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + 451 len 4], Mask(224, 32, ('cd', 4)[3]) >> 32 + 451]) + 452
        mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + 451] = _344
        require _342 + (32 * _344) + 32 <= return_data.size
        mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + 483 len 32 * _344] = mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + _342 + 483 len 32 * _344]
        if _344 < 1:
            revert with 0, 17
        if _344 - 1 >= _344:
            revert with 0, 50
        mem[224] = mem[(32 * _344 - 1) + ceil32(32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + 483]
        mem[mem[64]] = mem[(32 * _344 - 1) + ceil32(32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + 483]
        if not ('cd', 4)[6]:
            emit 0xa85e23fa: mem[mem[64]], ('cd', 4)[0]
        else:
            emit 0x8962509b: mem[mem[64]], ('cd', 4)[0]
    else:
        mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + 451] = 0xfb3bdb4100000000000000000000000000000000000000000000000000000000
        mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + 455] = ('cd', 4)[3]
        mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + 487] = 128
        mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + 583] = cd[(cd[4] + ('cd', 4)[1] + 4)]
        idx = 0
        s = 480
        t = ceil32(32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + 615
        while idx < cd[(cd[4] + ('cd', 4)[1] + 4)]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + 519] = this.address
        mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + 551] = block.timestamp
        require ext_code.size(sub_f33096d8Address)
        call sub_f33096d8Address.swapETHForExactTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
           value msg.value - sub_e14ad02d[('cd', 4).length] wei
             gas gas_remaining wei
            args ('cd', 4)[3], Array(len=cd[(cd[4] + ('cd', 4)[1] + 4)], data=mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + 615 len 32 * cd[(cd[4] + ('cd', 4)[1] + 4)]]), address(this.address), block.timestamp
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + 451 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + 451
        require return_data.size >= 32
        _341 = mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + 451 len 4], Mask(224, 32, ('cd', 4)[3]) >> 32
        require mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + 451 len 4], Mask(224, 32, ('cd', 4)[3]) >> 32 <= test266151307()
        require ceil32(32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + return_data.size + 451 > ceil32(32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + 451 len 4], Mask(224, 32, ('cd', 4)[3]) >> 32 + 482
        _343 = mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + 451 len 4], Mask(224, 32, ('cd', 4)[3]) >> 32 + 451]
        if mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + 451 len 4], Mask(224, 32, ('cd', 4)[3]) >> 32 + 451] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + 451 len 4], Mask(224, 32, ('cd', 4)[3]) >> 32 + 451]) + 1 < 0 or ceil32(32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + ceil32(32 * mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + 451 len 4], Mask(224, 32, ('cd', 4)[3]) >> 32 + 451]) + 452 > test266151307():
            revert with 0, 65
        mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + 451] = mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + 451 len 4], Mask(224, 32, ('cd', 4)[3]) >> 32 + 451]
        require _341 + (32 * _343) + 32 <= return_data.size
        mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + 483 len 32 * _343] = mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + _341 + 483 len 32 * _343]
        if 0 >= _343:
            revert with 0, 50
        if 0 >= _343:
            revert with 0, 50
        if msg.value - sub_e14ad02d[('cd', 4).length] < mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + 483]:
            revert with 0, 17
        if eth.balance(this.address) < msg.value - sub_e14ad02d[('cd', 4).length] - mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + 483]:
            revert with 0, 'Address: insufficient balance'
        call msg.sender with:
           value msg.value - sub_e14ad02d[('cd', 4).length] - mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + 483] wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with 0, 'Address: unable to send value, recipient may have reverted'
        if not ('cd', 4)[6]:
            emit 0xa85e23fa: ('cd', 4)[3], mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + 483]
        else:
            emit 0x8962509b: ('cd', 4)[3], mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[1] + 4)]) + ceil32(32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[9] + 4)])) + ceil32(return_data.size) + 483]
}

function sub_a73caff1(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require calldata.size + -cd[4] - 4 >= 192
    require ('cd', 4).length == address(('cd', 4).length)
    mem[96] = ('cd', 4).length
    mem[128] = ('cd', 4)[0]
    mem[160] = ('cd', 4)[1]
    require ('cd', 4)[2] <= test266151307()
    require cd[4] + ('cd', 4)[2] + 35 < calldata.size
    if cd[(cd[4] + ('cd', 4)[2] + 4)] > test266151307():
        revert with 0, 65
    if ceil32(32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + 289 < 288 or ceil32(32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + 289 > test266151307():
        revert with 0, 65
    mem[288] = cd[(cd[4] + ('cd', 4)[2] + 4)]
    require cd[4] + ('cd', 4)[2] + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + 36 <= calldata.size
    idx = 0
    s = cd[4] + ('cd', 4)[2] + 36
    t = 320
    while idx < cd[(cd[4] + ('cd', 4)[2] + 4)]:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[192] = 288
    mem[224] = ('cd', 4)[3]
    require ('cd', 4)[4] <= test266151307()
    require cd[4] + ('cd', 4)[4] + 35 < calldata.size
    if cd[(cd[4] + ('cd', 4)[4] + 4)] > test266151307():
        revert with 0, 65
    if ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + 290 < 289 or ceil32(32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + 290 > test266151307():
        revert with 0, 65
    mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + 289] = cd[(cd[4] + ('cd', 4)[4] + 4)]
    require cd[4] + ('cd', 4)[4] + cd[(cd[4] + ('cd', 4)[4] + 4)] + 36 <= calldata.size
    mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + 321 len cd[(cd[4] + ('cd', 4)[4] + 4)]] = call.data[cd[4] + ('cd', 4)[4] + 36 len cd[(cd[4] + ('cd', 4)[4] + 4)]]
    mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + cd[(cd[4] + ('cd', 4)[4] + 4)] + 321] = 0
    mem[256] = ceil32(32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + 289
    if not roleAdmin[0xfee2b7fb3b832174769106daebcfd6d1970523240dda11281102db9363b83b0d][address(msg.sender)].field_0:
        revert with 0, 'swapContract: Caller is not in relayer role'
    if uint8(stor1.field_0):
        revert with 0, 'Pausable: paused'
    if ('cd', 4)[0] < sub_9294a030:
        revert with 0, 'swapContract: Not enough amount of tokens'
    if ('cd', 4)[0] > maxTokenAmount:
        revert with 0, 'swapContract: Too many RBC requested'
    if cd[(cd[4] + ('cd', 4)[2] + 4)] <= 0:
        revert with 0, 'swapContract: path length must be greater than 1'
    if not cd[(cd[4] + ('cd', 4)[2] + 4)]:
        revert with 0, 50
    if mem[332 len 20] != address(sub_2dd39c55[uint128(stor1.field_0)]):
        revert with 0, 'swapContract: the first address in the path must be Rubic'
    if not address(('cd', 4).length):
        revert with 0, 'swapContract: Address cannot be zero address'
    if cd[(cd[4] + ('cd', 4)[4] + 4)] % 65:
        revert with 0, 'swapContract: Signatures lengths must be divisible by 65'
    if cd[(cd[4] + ('cd', 4)[4] + 4)] / 65 < sub_12b57cea:
        revert with 0, 'swapContract: Not enough signatures passed'
    mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + 322] = address(('cd', 4).length)
    mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + 342] = ('cd', 4)[0]
    mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + 374] = ('cd', 4)[3]
    mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + 406] = numOfThisBlockchain
    mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + 290] = 116
    mem[0] = ('cd', 4)[3]
    mem[32] = 7
    if processedTransactions[('cd', 4)[3]]:
        revert with 0, 'swapContract: Transaction already processed'
    if cd[(cd[4] + ('cd', 4)[4] + 4)] / 65 > test266151307():
        revert with 0, 65
    mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + 438] = cd[(cd[4] + ('cd', 4)[4] + 4)] / 65
    mem[64] = ceil32(32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)] / 65) + 470
    if not cd[(cd[4] + ('cd', 4)[4] + 4)] / 65:
        idx = 0
        while idx < cd[(cd[4] + ('cd', 4)[4] + 4)] / 65:
            if idx and 65 > -1 / idx:
                revert with 0, 17
            _275 = mem[(65 * idx) + ceil32(32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + 321]
            _276 = mem[(65 * idx) + ceil32(32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + 353]
            if Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 385, ('mul', 65, ('var', 0)), ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 256, 0, 5, ('cd', ('add', 4, ('cd', 4), ('cd', ('add', 100, ('cd', 4))))))))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 385, ('mul', 65, ('var', 0)), ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 256, 0, 5, ('cd', ('add', 4, ('cd', 4), ('cd', ('add', 100, ('cd', 4))))))))), 32))), 0) - 256 >= 27:
                mem[0] = 0
                mem[32] = sha3(0x21702c8af46127c7fa207f89d0b0a8441bb32959a0ac7df790e9ab1a25c98926, 0)
                if not roleAdmin[0x21702c8af46127c7fa207f89d0b0a8441bb32959a0ac7df790e9ab1a25c98926][0].field_0:
                    revert with 0, 'swapContract: Validator address not in whitelist'
                s = 0
                while s < idx:
                    if s >= mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + 438]:
                        revert with 0, 50
                    if 0 == mem[(32 * s) + ceil32(32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + 482 len 20]:
                        revert with 0, 'swapContract: Validator address is duplicated'
                    if s == -1:
                        revert with 0, 17
                    s = s + 1
                    continue 
                if idx >= mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + 438]:
                    revert with 0, 50
                mem[(32 * idx) + ceil32(32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + 470] = 0
            else:
                _283 = mem[64]
                mem[mem[64] + 32] = '\x19Ethereum Signed Message:\n32'
                mem[mem[64] + 60] = sha3(address(('cd', 4).length), ('cd', 4)[0], ('cd', 4)[3], numOfThisBlockchain)
                _284 = mem[64]
                mem[mem[64]] = 60
                mem[64] = mem[64] + 92
                _286 = sha3(mem[_284 + 32 len mem[_284]])
                mem[_283 + 92] = 0
                mem[64] = _283 + 124
                mem[_283 + 124] = _286
                mem[_283 + 156] = 27
                mem[_283 + 188] = _275
                mem[_283 + 220] = _276
                signer = erecover(_286, 27, _275, _276) 
                mem[_283 + 92] = signer
                if not erecover.result:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[0] = address(signer)
                mem[32] = sha3(0x21702c8af46127c7fa207f89d0b0a8441bb32959a0ac7df790e9ab1a25c98926, 0)
                if not roleAdmin[0x21702c8af46127c7fa207f89d0b0a8441bb32959a0ac7df790e9ab1a25c98926][address(signer)].field_0:
                    revert with 0, 'swapContract: Validator address not in whitelist'
                s = 0
                while s < idx:
                    if s >= mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + 438]:
                        revert with 0, 50
                    if address(signer) == mem[(32 * s) + ceil32(32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + 482 len 20]:
                        revert with 0, 'swapContract: Validator address is duplicated'
                    if s == -1:
                        revert with 0, 17
                    s = s + 1
                    continue 
                if idx >= mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + 438]:
                    revert with 0, 50
                mem[(32 * idx) + ceil32(32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + 470] = address(signer)
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        processedTransactions[('cd', 4)[3]] = 1
        _271 = mem[128]
        mem[0] = numOfThisBlockchain
        mem[32] = 5
        if 10^6 < sub_14d74858[uint128(stor1.field_0)]:
            revert with 0, 17
        if mulmod(mem[128], -sub_14d74858[uint128(stor1.field_0)] + 10^6, -1) - (10^6 * mem[128]) + (sub_14d74858[uint128(stor1.field_0)] * mem[128]) - (mulmod(mem[128], -sub_14d74858[uint128(stor1.field_0)] + 10^6, -1) < (10^6 * mem[128]) - (sub_14d74858[uint128(stor1.field_0)] * mem[128])) != 0:
            require 10^6 > mulmod(mem[128], -sub_14d74858[uint128(stor1.field_0)] + 10^6, -1) - (10^6 * mem[128]) + (sub_14d74858[uint128(stor1.field_0)] * mem[128]) - (mulmod(mem[128], -sub_14d74858[uint128(stor1.field_0)] + 10^6, -1) < (10^6 * mem[128]) - (sub_14d74858[uint128(stor1.field_0)] * mem[128]))
            revert with 0, 17
        if mem[128] < (10^6 * mem[128]) - (sub_14d74858[uint128(stor1.field_0)] * mem[128]) / 10^6:
            revert with 0, 17
        if sub_cfe6a3a5 > !(mem[128] - ((10^6 * mem[128]) - (sub_14d74858[uint128(stor1.field_0)] * mem[128]) / 10^6)):
            revert with 0, 17
        sub_cfe6a3a5 = sub_cfe6a3a5 + mem[128] - ((10^6 * mem[128]) - (sub_14d74858[uint128(stor1.field_0)] * mem[128]) / 10^6)
        _303 = mem[160]
        _304 = mem[192]
        _305 = mem[96]
        mem[mem[64]] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = (10^6 * _271) - (sub_14d74858[uint128(stor1.field_0)] * _271) / 10^6
        mem[mem[64] + 36] = _303
        mem[mem[64] + 68] = 160
        _315 = mem[_304]
        mem[mem[64] + 164] = mem[_304]
        idx = 0
        s = _304 + 32
        t = mem[64] + 196
        while idx < _315:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 100] = address(_305)
        mem[mem[64] + 132] = block.timestamp
        require ext_code.size(sub_f33096d8Address)
        call sub_f33096d8Address.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args (10^6 * _271) - (sub_14d74858[uint128(stor1.field_0)] * _271) / 10^6, _303, 160, address(_305), block.timestamp, mem[mem[64] + 164 len (32 * _315) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _393 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _395 = mem[_393]
        require mem[_393] <= test266151307()
        require _393 + return_data.size > _393 + mem[_393] + 31
        _397 = mem[_393 + mem[_393]]
        if mem[_393 + mem[_393]] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[_393 + mem[_393]]) + 1 < 0 or _393 + ceil32(return_data.size) + ceil32(32 * mem[_393 + mem[_393]]) + 1 > test266151307():
            revert with 0, 65
        mem[64] = _393 + ceil32(return_data.size) + ceil32(32 * mem[_393 + mem[_393]]) + 1
        mem[_393 + ceil32(return_data.size)] = _397
        require _395 + (32 * _397) + 32 <= return_data.size
        mem[_393 + ceil32(return_data.size) + 32 len 32 * _397] = mem[_393 + _395 + 32 len 32 * _397]
        _416 = mem[128]
        _417 = mem[224]
        mem[mem[64]] = mem[108 len 20]
        mem[mem[64] + 64] = (10^6 * _271) - (sub_14d74858[uint128(stor1.field_0)] * _271) / 10^6
        mem[mem[64] + 96] = _417
        emit TransferFromOtherBlockchain(mem[mem[64]], _416, (10^6 * _271) - (sub_14d74858[uint128(stor1.field_0)] * _271) / 10^6, _417);
    else:
        mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + 470 len 32 * cd[(cd[4] + ('cd', 4)[4] + 4)] / 65] = call.data[calldata.size len 32 * cd[(cd[4] + ('cd', 4)[4] + 4)] / 65]
        idx = 0
        while idx < cd[(cd[4] + ('cd', 4)[4] + 4)] / 65:
            if idx and 65 > -1 / idx:
                revert with 0, 17
            _278 = mem[(65 * idx) + ceil32(32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + 321]
            _279 = mem[(65 * idx) + ceil32(32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + 353]
            if Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 385, ('mul', 65, ('var', 0)), ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 256, 0, 5, ('cd', ('add', 4, ('cd', 4), ('cd', ('add', 100, ('cd', 4))))))))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 385, ('mul', 65, ('var', 0)), ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 256, 0, 5, ('cd', ('add', 4, ('cd', 4), ('cd', ('add', 100, ('cd', 4))))))))), 32))), 0) - 256 >= 27:
                mem[0] = 0
                mem[32] = sha3(0x21702c8af46127c7fa207f89d0b0a8441bb32959a0ac7df790e9ab1a25c98926, 0)
                if not roleAdmin[0x21702c8af46127c7fa207f89d0b0a8441bb32959a0ac7df790e9ab1a25c98926][0].field_0:
                    revert with 0, 'swapContract: Validator address not in whitelist'
                s = 0
                while s < idx:
                    if s >= mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + 438]:
                        revert with 0, 50
                    if 0 == mem[(32 * s) + ceil32(32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + 482 len 20]:
                        revert with 0, 'swapContract: Validator address is duplicated'
                    if s == -1:
                        revert with 0, 17
                    s = s + 1
                    continue 
                if idx >= mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + 438]:
                    revert with 0, 50
                mem[(32 * idx) + ceil32(32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + 470] = 0
            else:
                _287 = mem[64]
                mem[mem[64] + 32] = '\x19Ethereum Signed Message:\n32'
                mem[mem[64] + 60] = sha3(address(('cd', 4).length), ('cd', 4)[0], ('cd', 4)[3], numOfThisBlockchain)
                _288 = mem[64]
                mem[mem[64]] = 60
                mem[64] = mem[64] + 92
                _290 = sha3(mem[_288 + 32 len mem[_288]])
                mem[_287 + 92] = 0
                mem[64] = _287 + 124
                mem[_287 + 124] = _290
                mem[_287 + 156] = 27
                mem[_287 + 188] = _278
                mem[_287 + 220] = _279
                signer = erecover(_290, 27, _278, _279) 
                mem[_287 + 92] = signer
                if not erecover.result:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[0] = address(signer)
                mem[32] = sha3(0x21702c8af46127c7fa207f89d0b0a8441bb32959a0ac7df790e9ab1a25c98926, 0)
                if not roleAdmin[0x21702c8af46127c7fa207f89d0b0a8441bb32959a0ac7df790e9ab1a25c98926][address(signer)].field_0:
                    revert with 0, 'swapContract: Validator address not in whitelist'
                s = 0
                while s < idx:
                    if s >= mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + 438]:
                        revert with 0, 50
                    if address(signer) == mem[(32 * s) + ceil32(32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + 482 len 20]:
                        revert with 0, 'swapContract: Validator address is duplicated'
                    if s == -1:
                        revert with 0, 17
                    s = s + 1
                    continue 
                if idx >= mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + 438]:
                    revert with 0, 50
                mem[(32 * idx) + ceil32(32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + 470] = address(signer)
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        processedTransactions[('cd', 4)[3]] = 1
        _273 = mem[128]
        mem[0] = numOfThisBlockchain
        mem[32] = 5
        if 10^6 < sub_14d74858[uint128(stor1.field_0)]:
            revert with 0, 17
        if mulmod(mem[128], -sub_14d74858[uint128(stor1.field_0)] + 10^6, -1) - (10^6 * mem[128]) + (sub_14d74858[uint128(stor1.field_0)] * mem[128]) - (mulmod(mem[128], -sub_14d74858[uint128(stor1.field_0)] + 10^6, -1) < (10^6 * mem[128]) - (sub_14d74858[uint128(stor1.field_0)] * mem[128])) != 0:
            require 10^6 > mulmod(mem[128], -sub_14d74858[uint128(stor1.field_0)] + 10^6, -1) - (10^6 * mem[128]) + (sub_14d74858[uint128(stor1.field_0)] * mem[128]) - (mulmod(mem[128], -sub_14d74858[uint128(stor1.field_0)] + 10^6, -1) < (10^6 * mem[128]) - (sub_14d74858[uint128(stor1.field_0)] * mem[128]))
            revert with 0, 17
        if mem[128] < (10^6 * mem[128]) - (sub_14d74858[uint128(stor1.field_0)] * mem[128]) / 10^6:
            revert with 0, 17
        if sub_cfe6a3a5 > !(mem[128] - ((10^6 * mem[128]) - (sub_14d74858[uint128(stor1.field_0)] * mem[128]) / 10^6)):
            revert with 0, 17
        sub_cfe6a3a5 = sub_cfe6a3a5 + mem[128] - ((10^6 * mem[128]) - (sub_14d74858[uint128(stor1.field_0)] * mem[128]) / 10^6)
        _308 = mem[160]
        _309 = mem[192]
        _310 = mem[96]
        mem[mem[64]] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = (10^6 * _273) - (sub_14d74858[uint128(stor1.field_0)] * _273) / 10^6
        mem[mem[64] + 36] = _308
        mem[mem[64] + 68] = 160
        _320 = mem[_309]
        mem[mem[64] + 164] = mem[_309]
        idx = 0
        s = _309 + 32
        t = mem[64] + 196
        while idx < _320:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 100] = address(_310)
        mem[mem[64] + 132] = block.timestamp
        require ext_code.size(sub_f33096d8Address)
        call sub_f33096d8Address.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args (10^6 * _273) - (sub_14d74858[uint128(stor1.field_0)] * _273) / 10^6, _308, 160, address(_310), block.timestamp, mem[mem[64] + 164 len (32 * _320) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _394 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _396 = mem[_394]
        require mem[_394] <= test266151307()
        require _394 + return_data.size > _394 + mem[_394] + 31
        _398 = mem[_394 + mem[_394]]
        if mem[_394 + mem[_394]] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[_394 + mem[_394]]) + 1 < 0 or _394 + ceil32(return_data.size) + ceil32(32 * mem[_394 + mem[_394]]) + 1 > test266151307():
            revert with 0, 65
        mem[64] = _394 + ceil32(return_data.size) + ceil32(32 * mem[_394 + mem[_394]]) + 1
        mem[_394 + ceil32(return_data.size)] = _398
        require _396 + (32 * _398) + 32 <= return_data.size
        mem[_394 + ceil32(return_data.size) + 32 len 32 * _398] = mem[_394 + _396 + 32 len 32 * _398]
        _420 = mem[128]
        _421 = mem[224]
        mem[mem[64]] = mem[108 len 20]
        mem[mem[64] + 64] = (10^6 * _273) - (sub_14d74858[uint128(stor1.field_0)] * _273) / 10^6
        mem[mem[64] + 96] = _421
        emit TransferFromOtherBlockchain(mem[mem[64]], _420, (10^6 * _273) - (sub_14d74858[uint128(stor1.field_0)] * _273) / 10^6, _421);
}

function sub_2cb1229f(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require calldata.size + -cd[4] - 4 >= 192
    require ('cd', 4).length == address(('cd', 4).length)
    mem[96] = ('cd', 4).length
    mem[128] = ('cd', 4)[0]
    mem[160] = ('cd', 4)[1]
    require ('cd', 4)[2] <= test266151307()
    require cd[4] + ('cd', 4)[2] + 35 < calldata.size
    if cd[(cd[4] + ('cd', 4)[2] + 4)] > test266151307():
        revert with 0, 65
    if ceil32(32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + 289 < 288 or ceil32(32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + 289 > test266151307():
        revert with 0, 65
    mem[288] = cd[(cd[4] + ('cd', 4)[2] + 4)]
    require cd[4] + ('cd', 4)[2] + (32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + 36 <= calldata.size
    idx = 0
    s = cd[4] + ('cd', 4)[2] + 36
    t = 320
    while idx < cd[(cd[4] + ('cd', 4)[2] + 4)]:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[192] = 288
    mem[224] = ('cd', 4)[3]
    require ('cd', 4)[4] <= test266151307()
    require cd[4] + ('cd', 4)[4] + 35 < calldata.size
    if cd[(cd[4] + ('cd', 4)[4] + 4)] > test266151307():
        revert with 0, 65
    if ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + 290 < 289 or ceil32(32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + 290 > test266151307():
        revert with 0, 65
    mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + 289] = cd[(cd[4] + ('cd', 4)[4] + 4)]
    require cd[4] + ('cd', 4)[4] + cd[(cd[4] + ('cd', 4)[4] + 4)] + 36 <= calldata.size
    mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + 321 len cd[(cd[4] + ('cd', 4)[4] + 4)]] = call.data[cd[4] + ('cd', 4)[4] + 36 len cd[(cd[4] + ('cd', 4)[4] + 4)]]
    mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + cd[(cd[4] + ('cd', 4)[4] + 4)] + 321] = 0
    mem[256] = ceil32(32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + 289
    if not roleAdmin[0xfee2b7fb3b832174769106daebcfd6d1970523240dda11281102db9363b83b0d][address(msg.sender)].field_0:
        revert with 0, 'swapContract: Caller is not in relayer role'
    if uint8(stor1.field_0):
        revert with 0, 'Pausable: paused'
    if ('cd', 4)[0] < sub_9294a030:
        revert with 0, 'swapContract: Not enough amount of tokens'
    if ('cd', 4)[0] > maxTokenAmount:
        revert with 0, 'swapContract: Too many RBC requested'
    if cd[(cd[4] + ('cd', 4)[2] + 4)] <= 0:
        revert with 0, 'swapContract: path length must be greater than 1'
    if not cd[(cd[4] + ('cd', 4)[2] + 4)]:
        revert with 0, 50
    if mem[332 len 20] != address(sub_2dd39c55[uint128(stor1.field_0)]):
        revert with 0, 'swapContract: the first address in the path must be Rubic'
    if not address(('cd', 4).length):
        revert with 0, 'swapContract: Address cannot be zero address'
    if cd[(cd[4] + ('cd', 4)[4] + 4)] % 65:
        revert with 0, 'swapContract: Signatures lengths must be divisible by 65'
    if cd[(cd[4] + ('cd', 4)[4] + 4)] / 65 < sub_12b57cea:
        revert with 0, 'swapContract: Not enough signatures passed'
    mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + 322] = address(('cd', 4).length)
    mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + 342] = ('cd', 4)[0]
    mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + 374] = ('cd', 4)[3]
    mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + 406] = numOfThisBlockchain
    mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + 290] = 116
    mem[0] = ('cd', 4)[3]
    mem[32] = 7
    if processedTransactions[('cd', 4)[3]]:
        revert with 0, 'swapContract: Transaction already processed'
    if cd[(cd[4] + ('cd', 4)[4] + 4)] / 65 > test266151307():
        revert with 0, 65
    mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + 438] = cd[(cd[4] + ('cd', 4)[4] + 4)] / 65
    mem[64] = ceil32(32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + (32 * cd[(cd[4] + ('cd', 4)[4] + 4)] / 65) + 470
    if not cd[(cd[4] + ('cd', 4)[4] + 4)] / 65:
        idx = 0
        while idx < cd[(cd[4] + ('cd', 4)[4] + 4)] / 65:
            if idx and 65 > -1 / idx:
                revert with 0, 17
            _711 = mem[(65 * idx) + ceil32(32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + 321]
            _712 = mem[(65 * idx) + ceil32(32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + 353]
            if Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 385, ('mul', 65, ('var', 0)), ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 256, 0, 5, ('cd', ('add', 4, ('cd', 4), ('cd', ('add', 100, ('cd', 4))))))))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 385, ('mul', 65, ('var', 0)), ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 256, 0, 5, ('cd', ('add', 4, ('cd', 4), ('cd', ('add', 100, ('cd', 4))))))))), 32))), 0) - 256 >= 27:
                mem[0] = 0
                mem[32] = sha3(0x21702c8af46127c7fa207f89d0b0a8441bb32959a0ac7df790e9ab1a25c98926, 0)
                if not roleAdmin[0x21702c8af46127c7fa207f89d0b0a8441bb32959a0ac7df790e9ab1a25c98926][0].field_0:
                    revert with 0, 'swapContract: Validator address not in whitelist'
                s = 0
                while s < idx:
                    if s >= mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + 438]:
                        revert with 0, 50
                    if 0 == mem[(32 * s) + ceil32(32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + 482 len 20]:
                        revert with 0, 'swapContract: Validator address is duplicated'
                    if s == -1:
                        revert with 0, 17
                    s = s + 1
                    continue 
                if idx >= mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + 438]:
                    revert with 0, 50
                mem[(32 * idx) + ceil32(32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + 470] = 0
            else:
                _719 = mem[64]
                mem[mem[64] + 32] = '\x19Ethereum Signed Message:\n32'
                mem[mem[64] + 60] = sha3(address(('cd', 4).length), ('cd', 4)[0], ('cd', 4)[3], numOfThisBlockchain)
                _720 = mem[64]
                mem[mem[64]] = 60
                mem[64] = mem[64] + 92
                _722 = sha3(mem[_720 + 32 len mem[_720]])
                mem[_719 + 92] = 0
                mem[64] = _719 + 124
                mem[_719 + 124] = _722
                mem[_719 + 156] = 27
                mem[_719 + 188] = _711
                mem[_719 + 220] = _712
                signer = erecover(_722, 27, _711, _712) 
                mem[_719 + 92] = signer
                if not erecover.result:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[0] = address(signer)
                mem[32] = sha3(0x21702c8af46127c7fa207f89d0b0a8441bb32959a0ac7df790e9ab1a25c98926, 0)
                if not roleAdmin[0x21702c8af46127c7fa207f89d0b0a8441bb32959a0ac7df790e9ab1a25c98926][address(signer)].field_0:
                    revert with 0, 'swapContract: Validator address not in whitelist'
                s = 0
                while s < idx:
                    if s >= mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + 438]:
                        revert with 0, 50
                    if address(signer) == mem[(32 * s) + ceil32(32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + 482 len 20]:
                        revert with 0, 'swapContract: Validator address is duplicated'
                    if s == -1:
                        revert with 0, 17
                    s = s + 1
                    continue 
                if idx >= mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + 438]:
                    revert with 0, 50
                mem[(32 * idx) + ceil32(32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + 470] = address(signer)
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        processedTransactions[('cd', 4)[3]] = 1
        _707 = mem[128]
        mem[0] = numOfThisBlockchain
        mem[32] = 5
        if 10^6 < sub_14d74858[uint128(stor1.field_0)]:
            revert with 0, 17
        if mulmod(mem[128], -sub_14d74858[uint128(stor1.field_0)] + 10^6, -1) - (10^6 * mem[128]) + (sub_14d74858[uint128(stor1.field_0)] * mem[128]) - (mulmod(mem[128], -sub_14d74858[uint128(stor1.field_0)] + 10^6, -1) < (10^6 * mem[128]) - (sub_14d74858[uint128(stor1.field_0)] * mem[128])) != 0:
            require 10^6 > mulmod(mem[128], -sub_14d74858[uint128(stor1.field_0)] + 10^6, -1) - (10^6 * mem[128]) + (sub_14d74858[uint128(stor1.field_0)] * mem[128]) - (mulmod(mem[128], -sub_14d74858[uint128(stor1.field_0)] + 10^6, -1) < (10^6 * mem[128]) - (sub_14d74858[uint128(stor1.field_0)] * mem[128]))
            revert with 0, 17
        if mem[128] < (10^6 * mem[128]) - (sub_14d74858[uint128(stor1.field_0)] * mem[128]) / 10^6:
            revert with 0, 17
        if sub_cfe6a3a5 > !(mem[128] - ((10^6 * mem[128]) - (sub_14d74858[uint128(stor1.field_0)] * mem[128]) / 10^6)):
            revert with 0, 17
        sub_cfe6a3a5 = sub_cfe6a3a5 + mem[128] - ((10^6 * mem[128]) - (sub_14d74858[uint128(stor1.field_0)] * mem[128]) / 10^6)
        if 0 >= mem[mem[192]]:
            revert with 0, 50
        _745 = mem[mem[192] + 32]
        if 1 == mem[mem[192]]:
            _771 = mem[64]
            mem[mem[64] + 36] = mem[108 len 20]
            mem[mem[64] + 68] = (10^6 * _707) - (sub_14d74858[uint128(stor1.field_0)] * _707) / 10^6
            _776 = mem[64]
            mem[mem[64]] = 68
            mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
            mem[64] = mem[64] + 164
            mem[_771 + 100] = 32
            mem[_771 + 132] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(address(_745)):
                revert with 0, 'Address: call to non-contract'
            _812 = mem[_776]
            mem[_771 + 164 len ceil32(mem[_776])] = mem[_776 + 32 len ceil32(mem[_776])]
            var96001 = ceil32(_812)
            if ceil32(_812) <= _812:
                call address(_745) with:
                     gas gas_remaining wei
                    args mem[_771 + 168 len _812 - 4]
                if return_data.size:
                    mem[_771 + 164] = return_data.size
                    mem[_771 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[_771 + 196] == bool(mem[_771 + 196])
                        if not mem[_771 + 196]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    emit TransferFromOtherBlockchain(mem[108 len 20], mem[128], (10^6 * _707) - (sub_14d74858[uint128(stor1.field_0)] * _707) / 10^6, mem[224]);
                else:
                    if not ext_call.success:
                        if mem[96]:
                            revert with memory
                              from 128
                               len mem[96]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if not mem[96]:
                        _1133 = mem[224]
                        mem[_771 + 164] = mem[108 len 20]
                        mem[_771 + 196] = mem[128]
                        mem[_771 + 228] = (10^6 * _707) - (sub_14d74858[uint128(stor1.field_0)] * _707) / 10^6
                        mem[_771 + 260] = _1133
                        emit TransferFromOtherBlockchain(mem[108 len 20], mem[128], (10^6 * _707) - (sub_14d74858[uint128(stor1.field_0)] * _707) / 10^6, _1133);
                    else:
                        require mem[96] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        _1215 = mem[224]
                        mem[_771 + 164] = mem[108 len 20]
                        mem[_771 + 196] = mem[128]
                        mem[_771 + 228] = (10^6 * _707) - (sub_14d74858[uint128(stor1.field_0)] * _707) / 10^6
                        mem[_771 + 260] = _1215
                        emit TransferFromOtherBlockchain(mem[108 len 20], mem[128], (10^6 * _707) - (sub_14d74858[uint128(stor1.field_0)] * _707) / 10^6, _1215);
            else:
                mem[_812 + _771 + 164] = 0
                call address(_745) with:
                     gas gas_remaining wei
                    args mem[_771 + 168 len _812 - 4]
                if return_data.size:
                    mem[_771 + 164] = return_data.size
                    mem[_771 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[_771 + 196] == bool(mem[_771 + 196])
                        if not mem[_771 + 196]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    emit TransferFromOtherBlockchain(mem[108 len 20], mem[128], (10^6 * _707) - (sub_14d74858[uint128(stor1.field_0)] * _707) / 10^6, mem[224]);
                else:
                    if not ext_call.success:
                        if mem[96]:
                            revert with memory
                              from 128
                               len mem[96]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if not mem[96]:
                        _1145 = mem[224]
                        mem[_771 + 164] = mem[108 len 20]
                        mem[_771 + 196] = mem[128]
                        mem[_771 + 228] = (10^6 * _707) - (sub_14d74858[uint128(stor1.field_0)] * _707) / 10^6
                        mem[_771 + 260] = _1145
                        emit TransferFromOtherBlockchain(mem[108 len 20], mem[128], (10^6 * _707) - (sub_14d74858[uint128(stor1.field_0)] * _707) / 10^6, _1145);
                    else:
                        require mem[96] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        _1223 = mem[224]
                        mem[_771 + 164] = mem[108 len 20]
                        mem[_771 + 196] = mem[128]
                        mem[_771 + 228] = (10^6 * _707) - (sub_14d74858[uint128(stor1.field_0)] * _707) / 10^6
                        mem[_771 + 260] = _1223
                        emit TransferFromOtherBlockchain(mem[108 len 20], mem[128], (10^6 * _707) - (sub_14d74858[uint128(stor1.field_0)] * _707) / 10^6, _1223);
        else:
            _753 = mem[160]
            _754 = mem[192]
            _755 = mem[96]
            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = (10^6 * _707) - (sub_14d74858[uint128(stor1.field_0)] * _707) / 10^6
            mem[mem[64] + 36] = _753
            mem[mem[64] + 68] = 160
            _775 = mem[_754]
            mem[mem[64] + 164] = mem[_754]
            idx = 0
            s = _754 + 32
            t = mem[64] + 196
            while idx < _775:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 100] = address(_755)
            mem[mem[64] + 132] = block.timestamp
            require ext_code.size(sub_f33096d8Address)
            call sub_f33096d8Address.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args (10^6 * _707) - (sub_14d74858[uint128(stor1.field_0)] * _707) / 10^6, _753, 160, address(_755), block.timestamp, mem[mem[64] + 164 len (32 * _775) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1053 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1059 = mem[_1053]
            require mem[_1053] <= test266151307()
            require _1053 + return_data.size > _1053 + mem[_1053] + 31
            _1069 = mem[_1053 + mem[_1053]]
            if mem[_1053 + mem[_1053]] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[_1053 + mem[_1053]]) + 1 < 0 or _1053 + ceil32(return_data.size) + ceil32(32 * mem[_1053 + mem[_1053]]) + 1 > test266151307():
                revert with 0, 65
            mem[64] = _1053 + ceil32(return_data.size) + ceil32(32 * mem[_1053 + mem[_1053]]) + 1
            mem[_1053 + ceil32(return_data.size)] = _1069
            require _1059 + (32 * _1069) + 32 <= return_data.size
            mem[_1053 + ceil32(return_data.size) + 32 len 32 * _1069] = mem[_1053 + _1059 + 32 len 32 * _1069]
            _1264 = mem[128]
            _1265 = mem[224]
            mem[mem[64]] = mem[108 len 20]
            mem[mem[64] + 64] = (10^6 * _707) - (sub_14d74858[uint128(stor1.field_0)] * _707) / 10^6
            mem[mem[64] + 96] = _1265
            emit TransferFromOtherBlockchain(mem[mem[64]], _1264, (10^6 * _707) - (sub_14d74858[uint128(stor1.field_0)] * _707) / 10^6, _1265);
    else:
        mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + 470 len 32 * cd[(cd[4] + ('cd', 4)[4] + 4)] / 65] = call.data[calldata.size len 32 * cd[(cd[4] + ('cd', 4)[4] + 4)] / 65]
        idx = 0
        while idx < cd[(cd[4] + ('cd', 4)[4] + 4)] / 65:
            if idx and 65 > -1 / idx:
                revert with 0, 17
            _714 = mem[(65 * idx) + ceil32(32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + 321]
            _715 = mem[(65 * idx) + ceil32(32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + 353]
            if Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 385, ('mul', 65, ('var', 0)), ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 256, 0, 5, ('cd', ('add', 4, ('cd', 4), ('cd', ('add', 100, ('cd', 4))))))))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 385, ('mul', 65, ('var', 0)), ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 256, 0, 5, ('cd', ('add', 4, ('cd', 4), ('cd', ('add', 100, ('cd', 4))))))))), 32))), 0) - 256 >= 27:
                mem[0] = 0
                mem[32] = sha3(0x21702c8af46127c7fa207f89d0b0a8441bb32959a0ac7df790e9ab1a25c98926, 0)
                if not roleAdmin[0x21702c8af46127c7fa207f89d0b0a8441bb32959a0ac7df790e9ab1a25c98926][0].field_0:
                    revert with 0, 'swapContract: Validator address not in whitelist'
                s = 0
                while s < idx:
                    if s >= mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + 438]:
                        revert with 0, 50
                    if 0 == mem[(32 * s) + ceil32(32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + 482 len 20]:
                        revert with 0, 'swapContract: Validator address is duplicated'
                    if s == -1:
                        revert with 0, 17
                    s = s + 1
                    continue 
                if idx >= mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + 438]:
                    revert with 0, 50
                mem[(32 * idx) + ceil32(32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + 470] = 0
            else:
                _723 = mem[64]
                mem[mem[64] + 32] = '\x19Ethereum Signed Message:\n32'
                mem[mem[64] + 60] = sha3(address(('cd', 4).length), ('cd', 4)[0], ('cd', 4)[3], numOfThisBlockchain)
                _724 = mem[64]
                mem[mem[64]] = 60
                mem[64] = mem[64] + 92
                _726 = sha3(mem[_724 + 32 len mem[_724]])
                mem[_723 + 92] = 0
                mem[64] = _723 + 124
                mem[_723 + 124] = _726
                mem[_723 + 156] = 27
                mem[_723 + 188] = _714
                mem[_723 + 220] = _715
                signer = erecover(_726, 27, _714, _715) 
                mem[_723 + 92] = signer
                if not erecover.result:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[0] = address(signer)
                mem[32] = sha3(0x21702c8af46127c7fa207f89d0b0a8441bb32959a0ac7df790e9ab1a25c98926, 0)
                if not roleAdmin[0x21702c8af46127c7fa207f89d0b0a8441bb32959a0ac7df790e9ab1a25c98926][address(signer)].field_0:
                    revert with 0, 'swapContract: Validator address not in whitelist'
                s = 0
                while s < idx:
                    if s >= mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + 438]:
                        revert with 0, 50
                    if address(signer) == mem[(32 * s) + ceil32(32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + 482 len 20]:
                        revert with 0, 'swapContract: Validator address is duplicated'
                    if s == -1:
                        revert with 0, 17
                    s = s + 1
                    continue 
                if idx >= mem[ceil32(32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + 438]:
                    revert with 0, 50
                mem[(32 * idx) + ceil32(32 * cd[(cd[4] + ('cd', 4)[2] + 4)]) + ceil32(ceil32(cd[(cd[4] + ('cd', 4)[4] + 4)])) + 470] = address(signer)
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        processedTransactions[('cd', 4)[3]] = 1
        _709 = mem[128]
        mem[0] = numOfThisBlockchain
        mem[32] = 5
        if 10^6 < sub_14d74858[uint128(stor1.field_0)]:
            revert with 0, 17
        if mulmod(mem[128], -sub_14d74858[uint128(stor1.field_0)] + 10^6, -1) - (10^6 * mem[128]) + (sub_14d74858[uint128(stor1.field_0)] * mem[128]) - (mulmod(mem[128], -sub_14d74858[uint128(stor1.field_0)] + 10^6, -1) < (10^6 * mem[128]) - (sub_14d74858[uint128(stor1.field_0)] * mem[128])) != 0:
            require 10^6 > mulmod(mem[128], -sub_14d74858[uint128(stor1.field_0)] + 10^6, -1) - (10^6 * mem[128]) + (sub_14d74858[uint128(stor1.field_0)] * mem[128]) - (mulmod(mem[128], -sub_14d74858[uint128(stor1.field_0)] + 10^6, -1) < (10^6 * mem[128]) - (sub_14d74858[uint128(stor1.field_0)] * mem[128]))
            revert with 0, 17
        if mem[128] < (10^6 * mem[128]) - (sub_14d74858[uint128(stor1.field_0)] * mem[128]) / 10^6:
            revert with 0, 17
        if sub_cfe6a3a5 > !(mem[128] - ((10^6 * mem[128]) - (sub_14d74858[uint128(stor1.field_0)] * mem[128]) / 10^6)):
            revert with 0, 17
        sub_cfe6a3a5 = sub_cfe6a3a5 + mem[128] - ((10^6 * mem[128]) - (sub_14d74858[uint128(stor1.field_0)] * mem[128]) / 10^6)
        if 0 >= mem[mem[192]]:
            revert with 0, 50
        _749 = mem[mem[192] + 32]
        if 1 == mem[mem[192]]:
            _773 = mem[64]
            mem[mem[64] + 36] = mem[108 len 20]
            mem[mem[64] + 68] = (10^6 * _709) - (sub_14d74858[uint128(stor1.field_0)] * _709) / 10^6
            _780 = mem[64]
            mem[mem[64]] = 68
            mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
            mem[64] = mem[64] + 164
            mem[_773 + 100] = 32
            mem[_773 + 132] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(address(_749)):
                revert with 0, 'Address: call to non-contract'
            _816 = mem[_780]
            mem[_773 + 164 len ceil32(mem[_780])] = mem[_780 + 32 len ceil32(mem[_780])]
            if ceil32(_816) <= _816:
                call address(_749) with:
                     gas gas_remaining wei
                    args mem[_773 + 168 len _816 - 4]
                if return_data.size:
                    mem[_773 + 164] = return_data.size
                    mem[_773 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[_773 + 196] == bool(mem[_773 + 196])
                        if not mem[_773 + 196]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    emit TransferFromOtherBlockchain(mem[108 len 20], mem[128], (10^6 * _709) - (sub_14d74858[uint128(stor1.field_0)] * _709) / 10^6, mem[224]);
                else:
                    if not ext_call.success:
                        if mem[96]:
                            revert with memory
                              from 128
                               len mem[96]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if not mem[96]:
                        _1157 = mem[224]
                        mem[_773 + 164] = mem[108 len 20]
                        mem[_773 + 196] = mem[128]
                        mem[_773 + 228] = (10^6 * _709) - (sub_14d74858[uint128(stor1.field_0)] * _709) / 10^6
                        mem[_773 + 260] = _1157
                        emit TransferFromOtherBlockchain(mem[108 len 20], mem[128], (10^6 * _709) - (sub_14d74858[uint128(stor1.field_0)] * _709) / 10^6, _1157);
                    else:
                        require mem[96] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        _1231 = mem[224]
                        mem[_773 + 164] = mem[108 len 20]
                        mem[_773 + 196] = mem[128]
                        mem[_773 + 228] = (10^6 * _709) - (sub_14d74858[uint128(stor1.field_0)] * _709) / 10^6
                        mem[_773 + 260] = _1231
                        emit TransferFromOtherBlockchain(mem[108 len 20], mem[128], (10^6 * _709) - (sub_14d74858[uint128(stor1.field_0)] * _709) / 10^6, _1231);
            else:
                mem[_816 + _773 + 164] = 0
                call address(_749) with:
                     gas gas_remaining wei
                    args mem[_773 + 168 len _816 - 4]
                if return_data.size:
                    mem[_773 + 164] = return_data.size
                    mem[_773 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[_773 + 196] == bool(mem[_773 + 196])
                        if not mem[_773 + 196]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    emit TransferFromOtherBlockchain(mem[108 len 20], mem[128], (10^6 * _709) - (sub_14d74858[uint128(stor1.field_0)] * _709) / 10^6, mem[224]);
                else:
                    if not ext_call.success:
                        if mem[96]:
                            revert with memory
                              from 128
                               len mem[96]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if not mem[96]:
                        _1169 = mem[224]
                        mem[_773 + 164] = mem[108 len 20]
                        mem[_773 + 196] = mem[128]
                        mem[_773 + 228] = (10^6 * _709) - (sub_14d74858[uint128(stor1.field_0)] * _709) / 10^6
                        mem[_773 + 260] = _1169
                        emit TransferFromOtherBlockchain(mem[108 len 20], mem[128], (10^6 * _709) - (sub_14d74858[uint128(stor1.field_0)] * _709) / 10^6, _1169);
                    else:
                        require mem[96] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        _1239 = mem[224]
                        mem[_773 + 164] = mem[108 len 20]
                        mem[_773 + 196] = mem[128]
                        mem[_773 + 228] = (10^6 * _709) - (sub_14d74858[uint128(stor1.field_0)] * _709) / 10^6
                        mem[_773 + 260] = _1239
                        emit TransferFromOtherBlockchain(mem[108 len 20], mem[128], (10^6 * _709) - (sub_14d74858[uint128(stor1.field_0)] * _709) / 10^6, _1239);
        else:
            _762 = mem[160]
            _763 = mem[192]
            _764 = mem[96]
            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = (10^6 * _709) - (sub_14d74858[uint128(stor1.field_0)] * _709) / 10^6
            mem[mem[64] + 36] = _762
            mem[mem[64] + 68] = 160
            _779 = mem[_763]
            mem[mem[64] + 164] = mem[_763]
            idx = 0
            s = _763 + 32
            t = mem[64] + 196
            while idx < _779:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 100] = address(_764)
            mem[mem[64] + 132] = block.timestamp
            require ext_code.size(sub_f33096d8Address)
            call sub_f33096d8Address.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args (10^6 * _709) - (sub_14d74858[uint128(stor1.field_0)] * _709) / 10^6, _762, 160, address(_764), block.timestamp, mem[mem[64] + 164 len (32 * _779) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1056 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1060 = mem[_1056]
            require mem[_1056] <= test266151307()
            require _1056 + return_data.size > _1056 + mem[_1056] + 31
            _1078 = mem[_1056 + mem[_1056]]
            if mem[_1056 + mem[_1056]] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[_1056 + mem[_1056]]) + 1 < 0 or _1056 + ceil32(return_data.size) + ceil32(32 * mem[_1056 + mem[_1056]]) + 1 > test266151307():
                revert with 0, 65
            mem[64] = _1056 + ceil32(return_data.size) + ceil32(32 * mem[_1056 + mem[_1056]]) + 1
            mem[_1056 + ceil32(return_data.size)] = _1078
            require _1060 + (32 * _1078) + 32 <= return_data.size
            mem[_1056 + ceil32(return_data.size) + 32 len 32 * _1078] = mem[_1056 + _1060 + 32 len 32 * _1078]
            _1268 = mem[128]
            _1269 = mem[224]
            mem[mem[64]] = mem[108 len 20]
            mem[mem[64] + 64] = (10^6 * _709) - (sub_14d74858[uint128(stor1.field_0)] * _709) / 10^6
            mem[mem[64] + 96] = _1269
            emit TransferFromOtherBlockchain(mem[mem[64]], _1268, (10^6 * _709) - (sub_14d74858[uint128(stor1.field_0)] * _709) / 10^6, _1269);
}



}
