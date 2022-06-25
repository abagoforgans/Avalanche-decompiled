contract main {




// =====================  Runtime code  =====================


address registryAddress;
mapping of uint8 stor1;
uint256 sub_7d7c3a90;
uint256 nonce;

function signers(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor1[arg1])
}

function registry() {
    return registryAddress
}

function sub_7d7c3a90(?) {
    return sub_7d7c3a90
}

function nonce() {
    return nonce
}

function _fallback() payable {
    revert
}

function initialize(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if registryAddress:
        revert with 0, 'ALREADY INITIALIZED'
    registryAddress = arg1
    stor1[address(arg2)] = 1
    sub_7d7c3a90 = 1
    emit 0xaa9d3380: arg2, 1
    return 1
}

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 0, 65
    if ceil32(arg4.length) + 128 < 96 or ceil32(arg4.length) + 128 > test266151307():
        revert with 0, 65
    require arg4 + arg4.length + 36 <= calldata.size
    mem[ceil32(arg4.length) + 128] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
    return Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
}

function onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    if arg5.length > test266151307():
        revert with 0, 65
    if ceil32(arg5.length) + 128 < 96 or ceil32(arg5.length) + 128 > test266151307():
        revert with 0, 65
    require arg5 + arg5.length + 36 <= calldata.size
    mem[ceil32(arg5.length) + 128] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
    return Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]
}

function recover(bytes32 arg1, bytes arg2) {
    require calldata.size - 4 >= 64
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(arg2.length) + 128 < 96 or ceil32(arg2.length) + 128 > test266151307():
        revert with 0, 65
    require arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    if arg2.length != 65:
        revert with 0, 'ECDSA: invalid signature length'
    if mem[160] > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
        revert with 0, 'ECDSA: invalid signature 's' value'
    revert with 0, 'ECDSA: invalid signature 'v' value'
}

function getHash(bytes arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(arg1.length) + 128 < 96 or ceil32(arg1.length) + 128 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    mem[ceil32(arg1.length) + 160] = address(this.address)
    mem[ceil32(arg1.length) + 180] = nonce
    mem[ceil32(arg1.length) + 212 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    if ceil32(arg1.length) > arg1.length:
        mem[ceil32(arg1.length) + arg1.length + 212] = 0
    mem[ceil32(arg1.length) + 128] = arg1.length + 52
    mem[arg1.length + ceil32(arg1.length) + 212] = sha3(mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]])
    return memory
      from arg1.length + ceil32(arg1.length) + 212
       len 32
}

function sub_104d6537(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(arg1.length) + 128 < 96 or ceil32(arg1.length) + 128 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(arg2.length) + 160 < 128 or ceil32(arg1.length) + ceil32(arg2.length) + 160 > test266151307():
        revert with 0, 65
    mem[ceil32(arg1.length) + 128] = arg2.length
    require arg2 + arg2.length + 36 <= calldata.size
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + arg2.length + 160] = 0
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = arg2.length + 52
    if arg1.length != 65:
        revert with 0, 'ECDSA: invalid signature length'
    if mem[160] > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
        revert with 0, 'ECDSA: invalid signature 's' value'
    revert with 0, 'ECDSA: invalid signature 'v' value'
}

function sub_20f5fbb7(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if not stor1[msg.sender]:
        if msg.sender != this.address:
            revert with 0, 'permission-denied'
    if not address(arg1):
        revert with 0, 'Invalid Signer Address'
    if not arg2:
        if 1 == sub_7d7c3a90:
            revert with 0, 'Cannot Remove All Signers'
    if stor1[address(arg1)]:
        if arg2:
            revert with 0, 'Address Is Already A Signer'
    if stor1[address(arg1)]:
        if not arg2:
            if 1 > sub_7d7c3a90:
                revert with 0, 'SafeMath: subtraction overflow'
            if sub_7d7c3a90 < 1:
                revert with 0, 17
            sub_7d7c3a90--
        else:
            if sub_7d7c3a90 > -2:
                revert with 0, 17
            if sub_7d7c3a90 + 1 < sub_7d7c3a90:
                revert with 0, 'SafeMath: addition overflow'
            sub_7d7c3a90++
    else:
        if not arg2:
            revert with 0, 'Address Is Not A Signer'
        if sub_7d7c3a90 > -2:
            revert with 0, 17
        if sub_7d7c3a90 + 1 < sub_7d7c3a90:
            revert with 0, 'SafeMath: addition overflow'
        sub_7d7c3a90++
    stor1[address(arg1)] = uint8(bool(arg2))
    emit 0xaa9d3380: address(arg1), bool(arg2)
}

function onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 0, 65
    if (32 * arg3.length) + 128 < 96 or (32 * arg3.length) + 128 > test266151307():
        revert with 0, 65
    require calldata.size >= arg3 + (32 * arg3.length) + 36
    s = arg3 + 36
    t = 128
    idx = 0
    while idx < arg3.length:
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 0, 65
    if (32 * arg4.length) + 160 < 128 or (32 * arg3.length) + (32 * arg4.length) + 160 > test266151307():
        revert with 0, 65
    require calldata.size >= arg4 + (32 * arg4.length) + 36
    s = arg4 + 36
    t = (32 * arg3.length) + 160
    idx = 0
    while idx < arg4.length:
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    if arg5.length > test266151307():
        revert with 0, 65
    if ceil32(arg5.length) + 192 < 160 or (32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 192 > test266151307():
        revert with 0, 65
    require arg5 + arg5.length + 36 <= calldata.size
    return 0xbc197c8100000000000000000000000000000000000000000000000000000000
}

function execute(address[] arg1, bytes[] arg2) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    if stor1[msg.sender]:
        idx = 0
        while idx < arg1.length:
            require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
            if idx >= arg2.length:
                revert with 0, 50
            require cd[(arg2 + (32 * idx) + 36)] < calldata.size + -arg2 - 67
            require cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)] <= test266151307()
            require arg2 + cd[(arg2 + (32 * idx) + 36)] + 68 <= calldata.size - cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]
            _12 = mem[64]
            mem[64] = mem[64] + ceil32(cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]) + 32
            mem[_12] = cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]
            mem[_12 + 32 len cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]] = call.data[arg2 + cd[(arg2 + (32 * idx) + 36)] + 68 len cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]]
            mem[_12 + cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)] + 32] = 0
            if not address(cd[((32 * idx) + arg1 + 36)]):
                revert with 0, 'target-invalid'
            delegate cd[((32 * idx) + arg1 + 36)] with:
                 gas gas_remaining wei
                args call.data[arg2 + cd[(arg2 + (32 * idx) + 36)] + 68 len cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]]
            if not delegate.return_code == 1:
                revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        if msg.sender != this.address:
            revert with 0, 'permission-denied'
        idx = 0
        while idx < arg1.length:
            require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
            if idx >= arg2.length:
                revert with 0, 50
            require cd[(arg2 + (32 * idx) + 36)] < calldata.size + -arg2 - 67
            require cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)] <= test266151307()
            require arg2 + cd[(arg2 + (32 * idx) + 36)] + 68 <= calldata.size - cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]
            _13 = mem[64]
            mem[64] = mem[64] + ceil32(cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]) + 32
            mem[_13] = cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]
            mem[_13 + 32 len cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]] = call.data[arg2 + cd[(arg2 + (32 * idx) + 36)] + 68 len cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]]
            mem[_13 + cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)] + 32] = 0
            if not address(cd[((32 * idx) + arg1 + 36)]):
                revert with 0, 'target-invalid'
            delegate cd[((32 * idx) + arg1 + 36)] with:
                 gas gas_remaining wei
                args call.data[arg2 + cd[(arg2 + (32 * idx) + 36)] + 68 len cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]]
            if not delegate.return_code == 1:
                revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
}



}
