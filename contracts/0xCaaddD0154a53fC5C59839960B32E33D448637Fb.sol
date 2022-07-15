contract main {




// =====================  Runtime code  =====================


address owner;
address operatorAddress;
address ratio;
address oracleAddress;

function operator() payable {
    return operatorAddress
}

function ratio() payable {
    return ratio
}

function oracle() payable {
    return oracleAddress
}

function owner() payable {
    return owner
}

function isOperator() payable {
    return (msg.sender == operatorAddress)
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_a8e303bd(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'operator: caller is not the operator'
    oracleAddress = address(arg1)
}

function sub_774ce622(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(144, 0, arg1)
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'operator: caller is not the operator'
    ratio = Mask(144, 0, arg1)
}

function _fallback() payable {
    call oracleAddress with:
       funct call.data[0 len 4]
         gas gas_remaining wei
        args call.data[4 len calldata.size - 4]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0 len return_data.size]
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

function transferOperator(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'operator: zero address given for new operator'
    emit OperatorTransferred(0, arg1);
    operatorAddress = arg1
}

function twap(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require ext_code.size(oracleAddress)
    staticcall oracleAddress.0x6808a128 with:
            gas gas_remaining wei
           args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[14 len 18]
    if ext_call.return_data[14 len 18] and ratio > test266151307() / ext_call.return_data[14 len 18]:
        revert with 0, 17
    return Mask(144, 0, Mask(144, 0, ratio * ext_call.return_data[14 len 18]) / 1000)
}

function consult(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require ext_code.size(oracleAddress)
    staticcall oracleAddress.0x3ddac953 with:
            gas gas_remaining wei
           args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[14 len 18]
    if ext_call.return_data[14 len 18] and ratio > test266151307() / ext_call.return_data[14 len 18]:
        revert with 0, 17
    return Mask(144, 0, Mask(144, 0, ratio * ext_call.return_data[14 len 18]) / 1000)
}



}
