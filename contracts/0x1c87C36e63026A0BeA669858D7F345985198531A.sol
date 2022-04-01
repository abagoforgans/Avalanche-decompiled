contract main {




// =====================  Runtime code  =====================


mapping of address pairs;
array of address sub_5034652b;
uint8 sub_f19b2731; offset 160
uint128 stor2; offset 160
address collectorAddress;
uint256 fee;

function sub_5034652b(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_5034652b.length
    return sub_5034652b[arg1]
}

function pairs(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return pairs[arg1][arg2]
}

function collector() payable {
    return collectorAddress
}

function fee() payable {
    return fee
}

function getPair(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return pairs[address(arg1)][address(arg2)]
}

function sub_f19b2731(?) payable {
    return bool(sub_f19b2731)
}

function _fallback() payable {
    revert
}

function changeFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if collectorAddress != msg.sender:
        revert with 0, 'only the collector'
    fee = arg1
}

function changeCollector(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    if collectorAddress != msg.sender:
        revert with 0, 'only the collector'
    collectorAddress = arg1
    stor2 = Mask(96, 0, arg2)
    return arg2
}

function createContract(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if arg1 == arg2:
        revert with 0, 'same currencies'
    if pairs[address(arg1)][address(arg2)]:
        revert with 0, 'contract exists'
    create contract with 0 wei
                    code: code.data[1538 len 22048], address(arg1), address(arg2), collectorAddress, fee, bool(sub_f19b2731)
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    pairs[address(arg1)][address(arg2)] = address(create.new_address)
    sub_5034652b.length++
    sub_5034652b[sub_5034652b.length] = address(create.new_address)
    if sub_f19b2731:
        require ext_code.size(collectorAddress)
        call collectorAddress.addWhitelist(address rg1) with:
             gas gas_remaining wei
            args address(create.new_address)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    emit NewPairCreated(address(arg1), address(arg2), address(create.new_address));
}



}
