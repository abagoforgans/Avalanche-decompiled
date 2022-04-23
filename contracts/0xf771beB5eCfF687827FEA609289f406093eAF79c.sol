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
    return bondDetails[arg1].field_0, 
           bondDetails[arg1].field_256,
           bondDetails[arg1].field_512,
           bondDetails[arg1].field_768,
           bondDetails[arg1].field_1024
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

function sub_0e8dbe24(?) payable {
    require calldata.size - 4 >= 224
    require arg6 <= 4294967296
    require arg6 + 36 <= calldata.size
    require arg6.length <= 4294967296 and arg6 + (32 * arg6.length) + 36 <= calldata.size
    require arg7 <= 4294967296
    require arg7 + 36 <= calldata.size
    require arg7.length <= 4294967296 and arg7 + (32 * arg7.length) + 36 <= calldata.size
    if sub_7db5a96aAddress != msg.sender:
        revert with 0, 'Not Olympus Pro Factory'
    sub_d8b256b4[address(arg4)] = bondDetails.length
    mem[352 len 32 * arg6.length] = call.data[arg6 + 36 len 32 * arg6.length]
    mem[(32 * arg6.length) + 352] = arg7.length
    mem[(32 * arg6.length) + 384 len 32 * arg7.length] = call.data[arg7 + 36 len 32 * arg7.length]
    mem[(32 * arg6.length) + (32 * arg7.length) + 384] = 0
    bondDetails.length++
    bondDetails[bondDetails.length].field_0 = arg1
    bondDetails[bondDetails.length].field_256 = arg2
    bondDetails[bondDetails.length].field_512 = arg3
    bondDetails[bondDetails.length].field_768 = arg4
    bondDetails[bondDetails.length].field_1024 = arg5
    bondDetails[bondDetails.length].field_1280 = arg6.length
    if not arg6.length:
        idx = 0
        while bondDetails[bondDetails.length].field_1280 > idx:
            stor[idx + sha3((7 * bondDetails.length) + ('name', 'bondDetails', 1) + 5)].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 352
        while (32 * arg6.length) + 352 > idx:
            stor[s + sha3((7 * bondDetails.length) + ('name', 'bondDetails', 1) + 5)].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg6.length) + 31) >> 5
        while bondDetails[bondDetails.length].field_1280 > idx:
            stor[idx + sha3((7 * bondDetails.length) + ('name', 'bondDetails', 1) + 5)].field_0 = 0
            idx = idx + 1
            continue 
    bondDetails[bondDetails.length].field_1536 = arg7.length
    if not arg7.length:
        idx = 0
        while bondDetails[bondDetails.length].field_1536 > idx:
            stor[idx + sha3((7 * bondDetails.length) + ('name', 'bondDetails', 1) + 6)].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = (32 * arg6.length) + 384
        while (32 * arg6.length) + (32 * arg7.length) + 384 > idx:
            stor[s + sha3((7 * bondDetails.length) + ('name', 'bondDetails', 1) + 6)].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg7.length) + 31) >> 5
        while bondDetails[bondDetails.length].field_1536 > idx:
            stor[idx + sha3((7 * bondDetails.length) + ('name', 'bondDetails', 1) + 6)].field_0 = 0
            idx = idx + 1
            continue 
    emit BondCreation(address(arg3), address(arg4), arg5);
    return address(arg3), arg4
}



}
