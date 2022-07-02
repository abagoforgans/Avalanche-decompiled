contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1, address arg2)
#  - sub_0e7f7191(?)
#  - sub_671b3e38(?)
#  - sub_752d6826(?)
#  - sub_f5b3e7f9(?)
#
address owner;
array of uint256 stor1;
uint256 sub_66af6961;
address payment_address;
mapping of struct sub_ed178503;

function payment_address() {
    return payment_address
}

function sub_66af6961(?) {
    return sub_66af6961
}

function owner() {
    return owner
}

function sub_ed178503(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(uint8(sub_ed178503[arg1].field_0)), uint256(sub_ed178503[arg1].field_256), uint256(sub_ed178503[arg1].field_512)
}

function _fallback() payable {
    revert
}

function getEthSignedMessageHash(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, arg1)
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_39194dcf(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_66af6961 = arg1
}

function changePaymentToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    payment_address = arg1
}

function sub_6f408b55(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint8(sub_ed178503[address(arg1)].field_0) = 0
    uint256(sub_ed178503[address(arg1)].field_256) = 0
    uint256(sub_ed178503[address(arg1)].field_512) = 0
}

function sub_72e4a826(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint8(sub_ed178503[address(arg1)].field_0) = 1
    uint256(sub_ed178503[address(arg1)].field_512) = arg2
    uint256(sub_ed178503[address(arg1)].field_256) = arg3
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

function sub_a1276ed6(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not uint8(sub_ed178503[address(arg1)].field_0):
        revert with 0, 'Dagora: Package not active'
    uint256(sub_ed178503[address(arg1)].field_512) = arg2
    uint256(sub_ed178503[address(arg1)].field_256) = arg3
}

function pay() {
    call payment_address.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), sub_66af6961
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_call.return_data[0]
    emit 0x977f806a: msg.sender
}

function sub_c1d2d00d(?) {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1 > 0
    require ext_code.size(address(arg2))
    call address(arg2).0x42842e0e with:
         gas gas_remaining wei
        args address(this.address), msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function splitSignature(bytes arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    if arg1.length != 65:
        revert with 0, 'invalid signature length'
    _4 = mem[160]
    mem[ceil32(ceil32(arg1.length)) + 97] = mem[128]
    return mem[ceil32(ceil32(arg1.length)) + 97], _4, 0
}

function recoverSigner(bytes32 arg1, bytes arg2) {
    require calldata.size - 4 >= 64
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 97 < 96 or ceil32(ceil32(arg2.length)) + 97 > test266151307():
        revert with 0, 65
    require arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    if arg2.length != 65:
        revert with 0, 'invalid signature length'
    signer = erecover(arg1, 0, mem[128], mem[160]) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    return address(signer)
}

function sub_b5f0c448(?) {
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
    mem[arg1.length + 128] = 0
    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 4
    mem[ceil32(ceil32(arg1.length)) + 97] = not address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])])
    return memory
      from ceil32(ceil32(arg1.length)) + 97
       len 32
}

function sub_b851fad4(?) {
    require calldata.size - 4 >= 128
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(('cd', 68).length)) + 97 < 96 or ceil32(ceil32(('cd', 68).length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 68).length
    require cd[68] + ('cd', 68).length + 36 <= calldata.size
    mem[128 len ('cd', 68).length] = call.data[cd[68] + 36 len ('cd', 68).length]
    mem[('cd', 68).length + 128] = 0
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    if ('cd', 100).length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(('cd', 100).length)) + 98 < 97 or ceil32(ceil32(('cd', 68).length)) + ceil32(ceil32(('cd', 100).length)) + 98 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(ceil32(('cd', 68).length)) + ceil32(ceil32(('cd', 100).length)) + 98
    mem[ceil32(ceil32(('cd', 68).length)) + 97] = ('cd', 100).length
    require cd[100] + ('cd', 100).length + 36 <= calldata.size
    mem[ceil32(ceil32(('cd', 68).length)) + 129 len ('cd', 100).length] = call.data[cd[100] + 36 len ('cd', 100).length]
    mem[ceil32(ceil32(('cd', 68).length)) + ('cd', 100).length + 129] = 0
    if 1 >= ('cd', 36).length:
        revert with 0, 50
    if 2 >= ('cd', 36).length:
        revert with 0, 50
    if 3 >= ('cd', 36).length:
        revert with 0, 50
    idx = 0
    s = cd[4] + 36
    t = mem[64] + 32
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ('cd', 36).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
    mem[mem[64] + (32 * ('cd', 4).length) + 32 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
    mem[(32 * ('cd', 36).length) + t] = ('cd', 36)[1]
    mem[(32 * ('cd', 36).length) + t + 32] = ('cd', 36)[2]
    _44 = mem[96]
    mem[(32 * ('cd', 36).length) + t + 64 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
    mem[_44 + (32 * ('cd', 36).length) + t + 64] = ('cd', 36)[3]
    if ceil32(_44) <= _44:
        _85 = mem[64]
        mem[mem[64]] = _44 + (32 * ('cd', 36).length) + t + -mem[64] + 64
        mem[64] = _44 + (32 * ('cd', 36).length) + t + 96
        _87 = sha3(mem[_85 + 32 len mem[_85]])
        mem[_44 + (32 * ('cd', 36).length) + t + 128] = '\x19Ethereum Signed Message:\n32'
        mem[_44 + (32 * ('cd', 36).length) + t + 156] = _87
        mem[_44 + (32 * ('cd', 36).length) + t + 96] = 60
        if 1 >= ('cd', 4).length:
            revert with 0, 50
        require ('cd', 4)[1] == address(('cd', 4)[1])
        if mem[ceil32(ceil32(('cd', 68).length)) + 97] != 65:
            revert with 0, 'invalid signature length'
        signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, _87), 0, mem[ceil32(ceil32(('cd', 68).length)) + 129], mem[ceil32(ceil32(('cd', 68).length)) + 161]) 
    else:
        _88 = mem[64]
        mem[mem[64]] = _44 + (32 * ('cd', 36).length) + t + -mem[64] + 64
        mem[64] = _44 + (32 * ('cd', 36).length) + t + 96
        _90 = sha3(mem[_88 + 32 len mem[_88]])
        mem[_44 + (32 * ('cd', 36).length) + t + 128] = '\x19Ethereum Signed Message:\n32'
        mem[_44 + (32 * ('cd', 36).length) + t + 156] = _90
        mem[_44 + (32 * ('cd', 36).length) + t + 96] = 60
        if 1 >= ('cd', 4).length:
            revert with 0, 50
        require ('cd', 4)[1] == address(('cd', 4)[1])
        if mem[ceil32(ceil32(('cd', 68).length)) + 97] != 65:
            revert with 0, 'invalid signature length'
        signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, _90), 0, mem[ceil32(ceil32(('cd', 68).length)) + 129], mem[ceil32(ceil32(('cd', 68).length)) + 161]) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    return (address(signer) == address(('cd', 4)[1]))
}

function sub_12108253(?) {
    require calldata.size - 4 >= 128
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(('cd', 68).length)) + 97 < 96 or ceil32(ceil32(('cd', 68).length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 68).length
    require cd[68] + ('cd', 68).length + 36 <= calldata.size
    mem[128 len ('cd', 68).length] = call.data[cd[68] + 36 len ('cd', 68).length]
    mem[('cd', 68).length + 128] = 0
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    if ('cd', 100).length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(('cd', 100).length)) + 98 < 97 or ceil32(ceil32(('cd', 68).length)) + ceil32(ceil32(('cd', 100).length)) + 98 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(ceil32(('cd', 68).length)) + ceil32(ceil32(('cd', 100).length)) + 98
    mem[ceil32(ceil32(('cd', 68).length)) + 97] = ('cd', 100).length
    require cd[100] + ('cd', 100).length + 36 <= calldata.size
    mem[ceil32(ceil32(('cd', 68).length)) + 129 len ('cd', 100).length] = call.data[cd[100] + 36 len ('cd', 100).length]
    mem[ceil32(ceil32(('cd', 68).length)) + ('cd', 100).length + 129] = 0
    idx = 3
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        if 1 > !idx:
            revert with 0, 17
        if idx + 1 >= ('cd', 36).length:
            revert with 0, 50
        mem[mem[64] + 4] = cd[((32 * idx + 1) + cd[36] + 36)]
        staticcall address(cd[((32 * idx) + cd[4] + 36)]).0x6352211e with:
                gas gas_remaining wei
               args cd[((32 * idx + 1) + cd[36] + 36)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _79 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_79] == mem[_79 + 12 len 20]
        if mem[_79 + 12 len 20] != msg.sender:
            revert with 0, 'Dagora: Invalid owner'
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = this.address
        staticcall address(cd[((32 * idx) + cd[4] + 36)]).0xe985e9c5 with:
                gas gas_remaining wei
               args msg.sender, this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _98 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _100 = mem[_98]
        require mem[_98] == bool(mem[_98])
        if 1 > !idx:
            revert with 0, 17
        if idx + 1 >= ('cd', 36).length:
            revert with 0, 50
        mem[mem[64] + 4] = cd[((32 * idx + 1) + cd[36] + 36)]
        staticcall address(cd[((32 * idx) + cd[4] + 36)]).getApproved(uint256 arg1) with:
                gas gas_remaining wei
               args cd[((32 * idx + 1) + cd[36] + 36)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _123 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_123] == mem[_123 + 12 len 20]
        if mem[_123 + 12 len 20] != this.address:
            if not _100:
                revert with 0, 'Dagora: Meta not approved'
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if 1 >= ('cd', 36).length:
        revert with 0, 50
    if 2 >= ('cd', 36).length:
        revert with 0, 50
    if 3 >= ('cd', 36).length:
        revert with 0, 50
    idx = 0
    s = cd[4] + 36
    t = mem[64] + 32
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ('cd', 36).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
    mem[mem[64] + (32 * ('cd', 4).length) + 32 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
    mem[(32 * ('cd', 36).length) + t] = ('cd', 36)[1]
    mem[(32 * ('cd', 36).length) + t + 32] = ('cd', 36)[2]
    _145 = mem[96]
    mem[(32 * ('cd', 36).length) + t + 64 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
    mem[_145 + (32 * ('cd', 36).length) + t + 64] = ('cd', 36)[3]
    if ceil32(_145) <= _145:
        _200 = mem[64]
        mem[mem[64]] = _145 + (32 * ('cd', 36).length) + t + -mem[64] + 64
        mem[64] = _145 + (32 * ('cd', 36).length) + t + 96
        _202 = sha3(mem[_200 + 32 len mem[_200]])
        mem[_145 + (32 * ('cd', 36).length) + t + 128] = '\x19Ethereum Signed Message:\n32'
        mem[_145 + (32 * ('cd', 36).length) + t + 156] = _202
        mem[_145 + (32 * ('cd', 36).length) + t + 96] = 60
        if 1 >= ('cd', 4).length:
            revert with 0, 50
        require ('cd', 4)[1] == address(('cd', 4)[1])
        if mem[ceil32(ceil32(('cd', 68).length)) + 97] != 65:
            revert with 0, 'invalid signature length'
        _216 = mem[ceil32(ceil32(('cd', 68).length)) + 129]
        _217 = mem[ceil32(ceil32(('cd', 68).length)) + 161]
        mem[_145 + (32 * ('cd', 36).length) + t + 220] = sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, _202)
        mem[_145 + (32 * ('cd', 36).length) + t + 252] = 0
        mem[_145 + (32 * ('cd', 36).length) + t + 284] = _216
        mem[_145 + (32 * ('cd', 36).length) + t + 316] = _217
        signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, _202), 0, _216, _217) 
        mem[_145 + (32 * ('cd', 36).length) + t + 188] = signer
        if not erecover.result:
            revert with ext_call.return_data[0 len return_data.size]
        if address(signer) != address(('cd', 4)[1]):
            revert with 0, 'Dagora: Signature not match'
        _238 = mem[ceil32(ceil32(('cd', 68).length)) + 97]
        mem[_145 + (32 * ('cd', 36).length) + t + 220 len ceil32(mem[ceil32(ceil32(('cd', 68).length)) + 97])] = mem[ceil32(ceil32(('cd', 68).length)) + 129 len ceil32(mem[ceil32(ceil32(('cd', 68).length)) + 97])]
        mem[_238 + _145 + (32 * ('cd', 36).length) + t + 220] = 4
        uint256(stor[sha3(mem[_145 + (32 * ('cd', 36).length) + t + 220 len _238 + 32])]) = msg.sender or Mask(96, 160, uint256(stor[sha3(mem[_145 + (32 * ('cd', 36).length) + t + 220 len _238 + 32])]))
        stor1[sha3(mem[_145 + (32 * ('cd', 36).length) + t + 220 len _238 + 32])] = block.timestamp
    else:
        _203 = mem[64]
        mem[mem[64]] = _145 + (32 * ('cd', 36).length) + t + -mem[64] + 64
        mem[64] = _145 + (32 * ('cd', 36).length) + t + 96
        _205 = sha3(mem[_203 + 32 len mem[_203]])
        mem[_145 + (32 * ('cd', 36).length) + t + 128] = '\x19Ethereum Signed Message:\n32'
        mem[_145 + (32 * ('cd', 36).length) + t + 156] = _205
        mem[_145 + (32 * ('cd', 36).length) + t + 96] = 60
        if 1 >= ('cd', 4).length:
            revert with 0, 50
        require ('cd', 4)[1] == address(('cd', 4)[1])
        if mem[ceil32(ceil32(('cd', 68).length)) + 97] != 65:
            revert with 0, 'invalid signature length'
        _220 = mem[ceil32(ceil32(('cd', 68).length)) + 129]
        _221 = mem[ceil32(ceil32(('cd', 68).length)) + 161]
        mem[_145 + (32 * ('cd', 36).length) + t + 220] = sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, _205)
        mem[_145 + (32 * ('cd', 36).length) + t + 252] = 0
        mem[_145 + (32 * ('cd', 36).length) + t + 284] = _220
        mem[_145 + (32 * ('cd', 36).length) + t + 316] = _221
        signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, _205), 0, _220, _221) 
        mem[_145 + (32 * ('cd', 36).length) + t + 188] = signer
        if not erecover.result:
            revert with ext_call.return_data[0 len return_data.size]
        if address(signer) != address(('cd', 4)[1]):
            revert with 0, 'Dagora: Signature not match'
        _239 = mem[ceil32(ceil32(('cd', 68).length)) + 97]
        mem[_145 + (32 * ('cd', 36).length) + t + 220 len ceil32(mem[ceil32(ceil32(('cd', 68).length)) + 97])] = mem[ceil32(ceil32(('cd', 68).length)) + 129 len ceil32(mem[ceil32(ceil32(('cd', 68).length)) + 97])]
        mem[_239 + _145 + (32 * ('cd', 36).length) + t + 220] = 4
        uint256(stor[sha3(mem[_145 + (32 * ('cd', 36).length) + t + 220 len _239 + 32])]) = msg.sender or Mask(96, 160, uint256(stor[sha3(mem[_145 + (32 * ('cd', 36).length) + t + 220 len _239 + 32])]))
        stor1[sha3(mem[_145 + (32 * ('cd', 36).length) + t + 220 len _239 + 32])] = block.timestamp
}



}
