contract main {




// =====================  Runtime code  =====================


uint8 stor0;
address OHMAddress; offset 8
uint256 stor0; offset 8
address owner;
array of address nonCirculatingOHM;

function isInitialized() payable {
    return bool(uint8(stor0.field_0))
}

function owner() payable {
    return owner
}

function OHM() payable {
    return OHMAddress
}

function nonCirculatingOHMAddresses(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < nonCirculatingOHM.length
    return address(nonCirculatingOHM[arg1])
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Sender is not owner'
    owner = arg1
    return 1
}

function initialize(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'caller is not owner'
    require not uint8(stor0.field_0)
    uint8(stor0.field_0) = 1
    Mask(248, 0, stor0.field_8) = 0
    OHMAddress = arg1
    return 1
}

function getNonCirculatingOHM() payable {
    idx = 0
    s = 0
    while idx < nonCirculatingOHM.length:
        mem[0] = 2
        mem[100] = address(nonCirculatingOHM[idx])
        require ext_code.size(OHMAddress)
        staticcall OHMAddress.0x70a08231 with:
                gas gas_remaining wei
               args address(nonCirculatingOHM[idx])
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] + s < s:
            revert with 0, 'SafeMath: addition overflow'
        if idx + 1 < idx:
            revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        s = ext_call.return_data[0] + s
        continue 
    return (_16 * nonCirculatingOHM.length)
}

function setNonCirculatingOHMAddresses(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Sender is not owner'
    nonCirculatingOHM.length = arg1.length
    if not arg1.length:
        idx = 0
        while nonCirculatingOHM.length > idx:
            uint256(nonCirculatingOHM[idx]) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = arg1 + 36
        while arg1 + (32 * arg1.length) + 36 > idx:
            address(nonCirculatingOHM[s]) = address(cd[idx])
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg1.length) + 31) >> 5
        while nonCirculatingOHM.length > idx:
            uint256(nonCirculatingOHM[idx]) = 0
            idx = idx + 1
            continue 
    return 1
}

function OHMCirculatingSupply() payable {
    require ext_code.size(OHMAddress)
    staticcall OHMAddress.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    idx = 0
    s = 0
    while idx < nonCirculatingOHM.length:
        mem[0] = 2
        mem[100] = address(nonCirculatingOHM[idx])
        require ext_code.size(OHMAddress)
        staticcall OHMAddress.0x70a08231 with:
                gas gas_remaining wei
               args address(nonCirculatingOHM[idx])
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] + s < s:
            revert with 0, 'SafeMath: addition overflow'
        if idx + 1 < idx:
            revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        s = ext_call.return_data[0] + s
        continue 
    if _30 * nonCirculatingOHM.length > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    return (ext_call.return_data[0] - (_30 * nonCirculatingOHM.length))
}



}
