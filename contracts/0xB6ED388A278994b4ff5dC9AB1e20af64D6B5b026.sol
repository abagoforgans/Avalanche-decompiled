contract main {




// =====================  Runtime code  =====================


address owner;
address factoryAddress;
mapping of address bank;
mapping of address underlying;

function bank(address arg1) payable {
    require calldata.size - 4 >= 32
    return bank[arg1]
}

function owner() payable {
    return owner
}

function factory() payable {
    return factoryAddress
}

function sub_cd6464d0(?) payable {
    require calldata.size - 4 >= 32
    return bool(bank[address(arg1)])
}

function underlying(address arg1) payable {
    require calldata.size - 4 >= 32
    return underlying[arg1]
}

function _fallback() payable {
    revert
}

function setFeeTo(address arg1) payable {
    require calldata.size - 4 >= 32
    revert with 0, 'incorrect contract'
}

function setFeeToSetter(address arg1) payable {
    require calldata.size - 4 >= 32
    revert with 0, 'incorrect contract'
}

function sub_84174b56(?) payable {
    require calldata.size - 4 >= 32
    if not bank[address(arg1)]:
        return arg1
    return bank[address(arg1)]
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setBank(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    bank[address(arg1)] = arg2
    underlying[address(arg2)] = arg1
}

function feeTo() payable {
    require ext_code.size(factoryAddress)
    staticcall factoryAddress.feeTo() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[12 len 20]
}

function allPairsLength() payable {
    require ext_code.size(factoryAddress)
    staticcall factoryAddress.0x574f2ba3 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function feeToSetter() payable {
    require ext_code.size(factoryAddress)
    staticcall factoryAddress.feeToSetter() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[12 len 20]
}

function allPairs(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(factoryAddress)
    staticcall factoryAddress.0x1e3dd18b with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[12 len 20]
}

function transferOwnership(address arg1) payable {
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

function createPair(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(factoryAddress)
    if not bank[address(arg1)]:
        if not bank[address(arg2)]:
            call factoryAddress.0xc9c65396 with:
                 gas gas_remaining wei
                args address(arg1), arg2
        else:
            call factoryAddress.0xc9c65396 with:
                 gas gas_remaining wei
                args address(arg1), bank[address(arg2)]
    else:
        if not bank[address(arg2)]:
            call factoryAddress.0xc9c65396 with:
                 gas gas_remaining wei
                args bank[address(arg1)], arg2
        else:
            call factoryAddress.0xc9c65396 with:
                 gas gas_remaining wei
                args bank[address(arg1)], bank[address(arg2)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[12 len 20]
}

function getPair(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(factoryAddress)
    if not bank[address(arg1)]:
        if not bank[address(arg2)]:
            staticcall factoryAddress.0xe6a43905 with:
                    gas gas_remaining wei
                   args address(arg1), arg2
        else:
            staticcall factoryAddress.0xe6a43905 with:
                    gas gas_remaining wei
                   args address(arg1), bank[address(arg2)]
    else:
        if not bank[address(arg2)]:
            staticcall factoryAddress.0xe6a43905 with:
                    gas gas_remaining wei
                   args bank[address(arg1)], arg2
        else:
            staticcall factoryAddress.0xe6a43905 with:
                    gas gas_remaining wei
                   args bank[address(arg1)], bank[address(arg2)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[12 len 20]
}



}
