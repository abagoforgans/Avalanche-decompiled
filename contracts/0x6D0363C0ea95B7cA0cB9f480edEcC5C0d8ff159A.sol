contract main {




// =====================  Runtime code  =====================


address owner;
address sub_56603732Address;
address verifierAddress;
array of struct stor3;
mapping of struct morphose;

function verifier() payable {
    return verifierAddress
}

function sub_56603732(?) payable {
    return sub_56603732Address
}

function getMorphose(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return morphose[arg1].field_256
}

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function transferOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'This function is restricted to the contract's owner'
    owner = arg1
}

function getDenominations() payable {
    if stor3.length:
        mem[128] = uint256(stor3.field_0)
        idx = 128
        s = 0
        while (32 * stor3.length) + 96 > idx:
            mem[idx + 32] = stor3[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        return Array(len=stor3.length, data=mem[128 len 32 * stor3.length])
    mem[(32 * stor3.length) + 128] = 32
    mem[(32 * stor3.length) + 160] = stor3.length
    mem[(32 * stor3.length) + 192 len 32 * stor3.length] = mem[128 len 32 * stor3.length]
    return memory
      from (32 * stor3.length) + 128
       len (96 * stor3.length) + 64
}

function sub_685ddc5a(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'This function is restricted to the contract's owner'
    create contract with 0 wei
                    code: code.data[2364 len 9101], sub_56603732Address, verifierAddress, arg1, address(arg2)
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    if not morphose[arg1].field_256:
        morphose[arg1].field_0 = stor3.length
        stor3.length++
        stor3[stor3.length].field_0 = arg1
    morphose[arg1].field_256 = address(create.new_address)
    emit MorphoseDeployed(arg1, address(create.new_address));
}



}
