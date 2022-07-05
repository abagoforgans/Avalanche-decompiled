contract main {




// =====================  Runtime code  =====================


address owner;
array of struct stor1;
mapping of uint256 stor2;
mapping of uint256 eARLY_ACCESS_MAP;
address sub_1dc8bc30Address;
uint256 baseFee;
uint256 tokenFee;
uint256 referralFee;
address ethAddress;
address nonEthAddress;
address tokenAddress;
address stor11;
uint256 ethCreationFee;
uint256 round1Length;
uint256 maxPresaleLength;
address stor15;
uint256 stor16;
uint256 round0Offset;
uint128 sub_6200ad09;
uint128 sub_f673bc77; offset 128
uint128 sub_fd2e9533;
uint256 sub_2c4128c2;

function getTokenAddress() payable {
    return tokenAddress
}

function getMaxPresaleLength() payable {
    return maxPresaleLength
}

function getBaseFee() payable {
    return baseFee
}

function sub_1dc8bc30(?) payable {
    return sub_1dc8bc30Address
}

function getEthAddress() payable {
    return ethAddress
}

function sub_2c4128c2(?) payable {
    return sub_2c4128c2
}

function EARLY_ACCESS_MAP(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return eARLY_ACCESS_MAP[arg1]
}

function getTokenFee() payable {
    return tokenFee
}

function sub_6200ad09(?) payable {
    return sub_6200ad09
}

function earlyAccessTokensLength() payable {
    return stor1.length
}

function owner() payable {
    return owner
}

function getNonEthAddress() payable {
    return nonEthAddress
}

function getRound1Length() payable {
    return round1Length
}

function getEthCreationFee() payable {
    return ethCreationFee
}

function sub_f673bc77(?) payable {
    return sub_f673bc77
}

function getReferralFee() payable {
    return referralFee
}

function getRound0Offset() payable {
    return round0Offset
}

function sub_fd2e9533(?) payable {
    return sub_fd2e9533
}

function _fallback() payable {
    revert
}

function getUNCLInfo() payable {
    return stor15, stor16, stor11
}

function sub_7d822477(?) payable {
    return sub_6200ad09, sub_6200ad09, sub_fd2e9533, sub_2c4128c2
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_80298227(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    round0Offset = arg1
}

function setRound1Length(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    round1Length = arg1
}

function setUNCLAllocationAmount(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor16 = arg1
}

function setMaxPresaleLength(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    maxPresaleLength = arg1
}

function allowedReferrersLength() payable {
    staticcall sub_1dc8bc30Address.0xabc689b4 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getEarlyAccessTokenAtIndex(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= stor1.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'EnumerableSet: index out of bounds'
    return stor1[arg1].field_0, eARLY_ACCESS_MAP[stor1[arg1].field_0]
}

function setFees(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5) payable {
    require calldata.size - 4 >= 160
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    baseFee = arg1
    tokenFee = arg2
    referralFee = arg4
    sub_2c4128c2 = arg5
    ethCreationFee = arg3
}

function SETTINGS() payable {
    return baseFee, 
           tokenFee,
           referralFee,
           ethAddress,
           nonEthAddress,
           tokenAddress,
           stor11,
           ethCreationFee,
           round1Length,
           maxPresaleLength,
           stor15,
           stor16,
           round0Offset
}

function sub_1338fbc1(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == uint128(arg1)
    require arg2 == uint128(arg2)
    require arg3 == uint128(arg3)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_6200ad09 = uint128(arg1)
    sub_f673bc77 = uint128(arg2)
    sub_fd2e9533 = uint128(arg3)
}

function sub_a46663ed(?) payable {
    staticcall sub_1dc8bc30Address.0xa46663ed with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    return ext_call.return_data[12 len 20]
}

function setFeeAddresses(address arg1, address arg2, address arg3, address arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    ethAddress = arg1
    nonEthAddress = arg2
    tokenAddress = arg3
    stor11 = arg4
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function getSettings() payable {
    return baseFee, 
           tokenFee,
           referralFee,
           ethAddress,
           nonEthAddress,
           tokenAddress,
           stor11,
           ethCreationFee,
           round1Length,
           maxPresaleLength,
           stor15,
           stor16,
           round0Offset,
           sub_6200ad09,
           sub_6200ad09,
           sub_fd2e9533,
           sub_2c4128c2
}

function getReferrerAtIndex(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    staticcall sub_1dc8bc30Address.0x30e43524 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    return ext_call.return_data[12 len 20]
}

function referrerIsValid(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    staticcall sub_1dc8bc30Address.referrerIsValid(address arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return bool(ext_call.return_data[0])
}

function userHoldsSufficientRound1Token(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor1.length:
        return 1
    if var48002 >= stor1.length:
        return 0
    if var56001 >= stor1.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'EnumerableSet: index out of bounds'
    if var58002 >= stor1.length:
        revert with 0, 50
    staticcall address(var66002).0x70a08231 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require var70002 - var70001 >= 32
    if var74001 < var74002:
        # nil
    else:
        return 1
}

function editEarlyAccessTokens(address arg1, uint256 arg2, bool arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg3:
        if not stor2[address(arg1)]:
            stor1.length++
            stor1[stor1.length].field_0 = arg1
            stor1[stor1.length].field_160 = 0
            stor2[address(arg1)] = stor1.length
    else:
        if stor2[address(arg1)]:
            if stor2[address(arg1)] < 1:
                revert with 0, 17
            if stor1.length < 1:
                revert with 0, 17
            if stor1.length - 1 >= stor1.length:
                revert with 0, 50
            if stor2[address(arg1)] - 1 >= stor1.length:
                revert with 0, 50
            stor1[stor2[address(arg1)]].field_0 = stor1[stor1.length].field_0
            if 1 > !(stor2[address(arg1)] - 1):
                revert with 0, 17
            stor2[stor1[stor1.length].field_0] = stor2[address(arg1)]
            if not stor1.length:
                revert with 0, 49
            stor1[stor1.length].field_0 = 0
            stor1.length--
            stor2[address(arg1)] = 0
    eARLY_ACCESS_MAP[address(arg1)] = arg2
}



}
