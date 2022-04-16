contract main {




// =====================  Runtime code  =====================


address stor0;
array of address data;

function Data(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < data.length
    return data[arg1]
}

function _fallback() payable {
    revert
}

function harvest(address arg1) payable {
    require calldata.size - 4 >= 32
}

function add(address arg1) payable {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        revert with 0, 'Not a Admin'
    data.length++
    data[data.length] = arg1
}

function Multiharvest(address arg1) payable {
    require calldata.size - 4 >= 32
    idx = 0
    while idx < data.length:
        mem[0] = 1
        mem[96] = 0xe5c011e00000000000000000000000000000000000000000000000000000000
        mem[100] = arg1
        require ext_code.size(data[idx])
        call data[idx].harvest(address rg1) with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
}



}
