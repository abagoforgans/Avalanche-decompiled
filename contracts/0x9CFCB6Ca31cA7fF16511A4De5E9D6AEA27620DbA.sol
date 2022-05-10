contract main {




// =====================  Runtime code  =====================


address policyAddress;
array of struct bondDetails;
address sub_7db5a96aAddress;
mapping of uint256 sub_d8b256b4;

function policy() payable {
    return policyAddress
}

function sub_7db5a96a(?) payable {
    return sub_7db5a96aAddress
}

function bondDetails(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < bondDetails.length
    return bondDetails[arg1].field_0, bondDetails[arg1].field_256, bondDetails[arg1].field_512, bondDetails[arg1].field_768
}

function sub_d8b256b4(?) payable {
    require calldata.size - 4 >= 32
    return sub_d8b256b4[arg1]
}

function _fallback() payable {
    revert
}

function setFactoryAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    if policyAddress != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_7db5a96aAddress = arg1
}

function transferManagment(address arg1) payable {
    require calldata.size - 4 >= 32
    if policyAddress != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1
    policyAddress = arg1
}

function sub_aa88a9e4(?) payable {
    require calldata.size - 4 >= 192
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + (32 * arg5.length) + 36 <= calldata.size
    require arg6 <= 4294967296
    require arg6 + 36 <= calldata.size
    require arg6.length <= 4294967296 and arg6 + (32 * arg6.length) + 36 <= calldata.size
    if sub_7db5a96aAddress != msg.sender:
        revert with 0, 'Not Olympus Pro Factory'
    sub_d8b256b4[address(arg3)] = bondDetails.length
    mem[320 len 32 * arg5.length] = call.data[arg5 + 36 len 32 * arg5.length]
    mem[(32 * arg5.length) + 320] = arg6.length
    mem[(32 * arg5.length) + 352 len 32 * arg6.length] = call.data[arg6 + 36 len 32 * arg6.length]
    mem[(32 * arg5.length) + (32 * arg6.length) + 352] = 0
    bondDetails.length++
    bondDetails[bondDetails.length].field_0 = arg1
    bondDetails[bondDetails.length].field_256 = arg2
    bondDetails[bondDetails.length].field_512 = arg3
    bondDetails[bondDetails.length].field_768 = arg4
    bondDetails[bondDetails.length].field_1024 = arg5.length
    if not arg5.length:
        idx = 0
        while bondDetails[bondDetails.length].field_1024 > idx:
            stor[idx + sha3((6 * bondDetails.length) + ('name', 'bondDetails', 1) + 4)].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 320
        while (32 * arg5.length) + 320 > idx:
            stor[s + sha3((6 * bondDetails.length) + ('name', 'bondDetails', 1) + 4)].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg5.length) + 31) >> 5
        while bondDetails[bondDetails.length].field_1024 > idx:
            stor[idx + sha3((6 * bondDetails.length) + ('name', 'bondDetails', 1) + 4)].field_0 = 0
            idx = idx + 1
            continue 
    bondDetails[bondDetails.length].field_1280 = arg6.length
    if not arg6.length:
        idx = 0
        while bondDetails[bondDetails.length].field_1280 > idx:
            stor[idx + sha3((6 * bondDetails.length) + ('name', 'bondDetails', 1) + 5)].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = (32 * arg5.length) + 352
        while (32 * arg5.length) + (32 * arg6.length) + 352 > idx:
            stor[s + sha3((6 * bondDetails.length) + ('name', 'bondDetails', 1) + 5)].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg6.length) + 31) >> 5
        while bondDetails[bondDetails.length].field_1280 > idx:
            stor[idx + sha3((6 * bondDetails.length) + ('name', 'bondDetails', 1) + 5)].field_0 = 0
            idx = idx + 1
            continue 
    emit BondCreation(address(arg2), address(arg3), arg4);
    return address(arg2), arg3
}



}
