contract main {




// =====================  Runtime code  =====================


const decimals = 18

const WEI = 10^18


function _fallback() payable {
    revert
}

function isSupported(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return 1
}

function sub_495e4348(?) payable {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    mem[128 len arg3.length] = arg3[all]
    mem[arg3.length + 128] = 0
    require ext_code.size(msg.sender)
    staticcall msg.sender.offers(bool arg1, uint256 arg2) with:
            gas gas_remaining wei
           args arg1 < arg2, mem[128]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 256
    return 0, ext_call.return_data[164 len 28]
}

function sub_b80333ed(?) payable {
    require calldata.size - 4 >= 192
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    mem[128 len arg3.length] = arg3[all]
    mem[arg3.length + 128] = 0
    require ext_code.size(msg.sender)
    staticcall msg.sender.offers(bool arg1, uint256 arg2) with:
            gas gas_remaining wei
           args arg1 < arg2, mem[128]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 256
    return 0, ext_call.return_data[164 len 28], 10^18
}



}
