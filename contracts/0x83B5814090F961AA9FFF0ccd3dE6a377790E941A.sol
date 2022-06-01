contract main {




// =====================  Runtime code  =====================


address owner;
address currentImplemtationAddress;
mapping of address wallet;

function currentImplemtation() payable {
    return currentImplemtationAddress
}

function walletAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return wallet[arg1]
}

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function updateImplemtation(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    currentImplemtationAddress = arg1
    emit UpdateImplemtation(currentImplemtationAddress, arg1);
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

function newFilter(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not arg2:
        if wallet[address(msg.sender)]:
            return 0
    create contract with 0 wei
                    code: code.data[2858 len 6437], currentImplemtationAddress, msg.sender, 96, 68, arg1, code.data[2858 len 28] >> 288, 0
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    wallet[address(msg.sender)] = address(create.new_address)
    return address(create.new_address)
}



}
