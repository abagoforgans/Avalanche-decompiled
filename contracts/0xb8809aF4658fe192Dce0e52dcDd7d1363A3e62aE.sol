contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;
mapping of uint8 stor2;
mapping of uint8 stor3;

function operators(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor3[arg1])
}

function sub_386f992a(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor2[arg1])
}

function owner() payable {
    return owner
}

function sub_92084a88(?) payable {
    require calldata.size - 4 >= 32
    return bool(stor1[arg1])
}

function _fallback() payable {
    revert
}

function sub_e44caa82(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sha3(address(arg1))
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setOperator(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor3[address(arg1)] = uint8(arg2)
}

function sub_6cb3f472(?) payable {
    require calldata.size - 4 >= 64
    require arg2 == bool(arg2)
    if not stor3[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Whitelist::setCampaign: only for operators'
    stor1[arg1] = uint8(bool(arg2))
}

function setUser(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor3[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Whitelist::setUser: only for operators'
    stor2[address(arg1)] = uint8(arg2)
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function sub_18cc0583(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg3.length)) + 97 < 96 or ceil32(ceil32(arg3.length)) + 97 > test266151307():
        revert with 0, 65
    require arg3 + arg3.length + 36 <= calldata.size
    mem[128 len arg3.length] = arg3[all]
    mem[arg3.length + 128] = 0
    if 65 == arg3.length:
        if mem[160] > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
            revert with 0, 'ECDSA: invalid signature 's' value'
        revert with 0, 'ECDSA: invalid signature 'v' value'
    if arg3.length != 64:
        revert with 0, 'ECDSA: invalid signature length'
    if 27 > !(bool(mem[160]) >> 255):
        revert with 0, 17
    if uint255(mem[160]) > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
        revert with 0, 'ECDSA: invalid signature 's' value'
    if uint8((bool(mem[160]) >> 255) + 27) != 27:
        if uint8((bool(mem[160]) >> 255) + 27) != 28:
            revert with 0, 'ECDSA: invalid signature 'v' value'
    signer = erecover(arg2, (bool(mem[160]) >> 255) + 27 << 248, mem[128], uint255(mem[160])) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if not address(signer):
        revert with 0, 'ECDSA: invalid signature'
    if bool(stor3[address(signer)]) != 1:
        revert with 0, 'Whitelist::isApproved: signature check failed'
    if sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(address(arg1))) != arg2:
        revert with 0, 'Whitelist::isApproved: integrety check failed'
    return 1
}

function sub_e341b58c(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    if stor1[arg2]:
        if stor2[address(arg1)]:
            return bool(stor2[address(arg1)])
        mem[128 len arg4.length] = arg4[all]
        mem[arg4.length + 128] = 0
        if 65 == arg4.length:
            if mem[160] > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
                revert with 0, 'ECDSA: invalid signature 's' value'
            revert with 0, 'ECDSA: invalid signature 'v' value'
        if arg4.length != 64:
            revert with 0, 'ECDSA: invalid signature length'
        if 27 > !(bool(mem[160]) >> 255):
            revert with 0, 17
        if uint255(mem[160]) > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
            revert with 0, 'ECDSA: invalid signature 's' value'
        if uint8((bool(mem[160]) >> 255) + 27) != 27:
            if uint8((bool(mem[160]) >> 255) + 27) != 28:
                revert with 0, 'ECDSA: invalid signature 'v' value'
        signer = erecover(arg3, (bool(mem[160]) >> 255) + 27 << 248, mem[128], uint255(mem[160])) 
        if not erecover.result:
            revert with ext_call.return_data[0 len return_data.size]
        if not address(signer):
            revert with 0, 'ECDSA: invalid signature'
        if bool(stor3[address(signer)]) != 1:
            revert with 0, 'Whitelist::isApproved: signature check failed'
        if sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(address(arg1))) != arg3:
            revert with 0, 'Whitelist::isApproved: integrety check failed'
    return 1
}



}
