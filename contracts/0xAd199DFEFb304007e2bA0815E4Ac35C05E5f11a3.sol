contract main {




// =====================  Runtime code  =====================


address masterchefAddress;
address stor1;
address panicAddress;
address wftmAddress;

function panic() payable {
    return panicAddress
}

function wftm() payable {
    return wftmAddress
}

function masterchef() payable {
    return masterchefAddress
}

function _fallback() payable {
    revert
}

function sub_1e1789a9(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return 10^18
}

function sub_ae619cbd(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return 10^18
}

function sub_14c762b6(?) payable {
    require ext_code.size(masterchefAddress)
    staticcall masterchefAddress.0xeacdaabc with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0xb38cf9b00b38cf9b00b38cf9b00b38cf9b00b38cf9b00b38cf9b00b38cf9b0:
        revert with 0, 17
    if 365 * ext_call.return_data[0] > 0xaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa:
        revert with 0, 17
    if 8760 * ext_call.return_data[0] > 0x123456789abcdf0123456789abcdf0123456789abcdf0123456789abcdf012:
        revert with 0, 17
    return (8760 * 24 * 3600 * ext_call.return_data[0])
}

function sub_791bc03f(?) payable {
    if wftmAddress == panicAddress:
        return 10^18
    require ext_code.size(stor1)
    staticcall stor1.getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args panicAddress, wftmAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(wftmAddress)
    staticcall wftmAddress.0x70a08231 with:
            gas gas_remaining wei
           args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(panicAddress)
    staticcall panicAddress.0x70a08231 with:
            gas gas_remaining wei
           args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    return (10^18 * ext_call.return_data[0] / ext_call.return_data[0])
}

function sub_9c8105d6(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if wftmAddress == address(arg1):
        return 10^18
    require ext_code.size(stor1)
    staticcall stor1.getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(arg1), wftmAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(wftmAddress)
    staticcall wftmAddress.0x70a08231 with:
            gas gas_remaining wei
           args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    return (10^18 * ext_call.return_data[0] / ext_call.return_data[0])
}

function sub_cfd54052(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(address(arg1))
    staticcall address(arg1).token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(arg1))
    staticcall address(arg1).token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if 10^18 * ext_call.return_data[0] > !(10^18 * ext_call.return_data[0]):
        revert with 0, 17
    return (2 * 10^18 * ext_call.return_data[0] / 10^18)
}

function sub_b8e0720d(?) payable {
    require ext_code.size(masterchefAddress)
    staticcall masterchefAddress.0x1526fe27 with:
            gas gas_remaining wei
           args 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(masterchefAddress)
    staticcall masterchefAddress.0x17caf6f1 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(masterchefAddress)
    staticcall masterchefAddress.0xeacdaabc with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0xb38cf9b00b38cf9b00b38cf9b00b38cf9b00b38cf9b00b38cf9b00b38cf9b0:
        revert with 0, 17
    if 365 * ext_call.return_data[0] > 0xaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa:
        revert with 0, 17
    if 8760 * ext_call.return_data[0] > 0x123456789abcdf0123456789abcdf0123456789abcdf0123456789abcdf012:
        revert with 0, 17
    if 8760 * 24 * 3600 * ext_call.return_data[0] and ext_call.return_data[32] > -1 / 8760 * 24 * 3600 * ext_call.return_data[0]:
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    require ext_code.size(panicAddress)
    staticcall panicAddress.0x70a08231 with:
            gas gas_remaining wei
           args masterchefAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 8760 * 24 * 3600 * ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[0] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    return (10000 * 8760 * 24 * 3600 * ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[0] / ext_call.return_data[0])
}

function sub_b71c4d8f(?) payable {
    require ext_code.size(masterchefAddress)
    staticcall masterchefAddress.0xeacdaabc with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0xb38cf9b00b38cf9b00b38cf9b00b38cf9b00b38cf9b00b38cf9b00b38cf9b0:
        revert with 0, 17
    if 365 * ext_call.return_data[0] > 0xaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa:
        revert with 0, 17
    if 8760 * ext_call.return_data[0] > 0x123456789abcdf0123456789abcdf0123456789abcdf0123456789abcdf012:
        revert with 0, 17
    if wftmAddress == panicAddress:
        if 8760 * 24 * 3600 * ext_call.return_data[0] and 10^18 > -1 / 8760 * 24 * 3600 * ext_call.return_data[0]:
            revert with 0, 17
        return (8760 * 10^18 * 24 * 3600 * ext_call.return_data[0] / 10^18)
    require ext_code.size(stor1)
    staticcall stor1.getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args panicAddress, wftmAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(wftmAddress)
    staticcall wftmAddress.0x70a08231 with:
            gas gas_remaining wei
           args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(panicAddress)
    staticcall panicAddress.0x70a08231 with:
            gas gas_remaining wei
           args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    if 8760 * 24 * 3600 * ext_call.return_data[0] and 10^18 * ext_call.return_data[0] / ext_call.return_data[0] > -1 / 8760 * 24 * 3600 * ext_call.return_data[0]:
        revert with 0, 17
    return (8760 * 24 * 3600 * ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10^18)
}

function sub_4d9b8d09(?) payable {
    require ext_code.size(stor1)
    staticcall stor1.getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args panicAddress, wftmAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(masterchefAddress)
    staticcall masterchefAddress.0x1526fe27 with:
            gas gas_remaining wei
           args 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(masterchefAddress)
    staticcall masterchefAddress.0x17caf6f1 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(masterchefAddress)
    staticcall masterchefAddress.0xeacdaabc with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0xb38cf9b00b38cf9b00b38cf9b00b38cf9b00b38cf9b00b38cf9b00b38cf9b0:
        revert with 0, 17
    if 365 * ext_call.return_data[0] > 0xaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa:
        revert with 0, 17
    if 8760 * ext_call.return_data[0] > 0x123456789abcdf0123456789abcdf0123456789abcdf0123456789abcdf012:
        revert with 0, 17
    if 8760 * 24 * 3600 * ext_call.return_data[0] and ext_call.return_data[32] > -1 / 8760 * 24 * 3600 * ext_call.return_data[0]:
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    require ext_code.size(panicAddress)
    staticcall panicAddress.0x70a08231 with:
            gas gas_remaining wei
           args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 0, 17
    if 8760 * 24 * 3600 * ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[0] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
        revert with 0, 17
    if not 2 * ext_call.return_data[0]:
        revert with 0, 18
    return (10000 * 8760 * 24 * 3600 * ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[0] / 2 * ext_call.return_data[0])
}

function sub_9fd6bf91(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(address(arg1))
    staticcall address(arg1).token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(arg1))
    staticcall address(arg1).token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if 10^18 * ext_call.return_data[0] > !(10^18 * ext_call.return_data[0]):
        revert with 0, 17
    if wftmAddress == 0xb97ef9ef8734c71904d8002f8b6bc66dd9c48a6e:
        if 2 * 10^18 * ext_call.return_data[0] / 10^18 / 10^18 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
            revert with 0, 17
        return (10^18 * 2 * 10^18 * ext_call.return_data[0] / 10^18 / 10^18)
    require ext_code.size(stor1)
    staticcall stor1.getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args 0xb97ef9ef8734c71904d8002f8b6bc66dd9c48a6e, wftmAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(wftmAddress)
    staticcall wftmAddress.0x70a08231 with:
            gas gas_remaining wei
           args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xb97ef9ef8734c71904d8002f8b6bc66dd9c48a6e)
    staticcall 0xb97ef9ef8734c71904d8002f8b6bc66dd9c48a6e.0x70a08231 with:
            gas gas_remaining wei
           args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    if not 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
        revert with 0, 18
    if 2 * 10^18 * ext_call.return_data[0] / 10^18 / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    return (10^18 * 2 * 10^18 * ext_call.return_data[0] / 10^18 / 10^18 * ext_call.return_data[0] / ext_call.return_data[0])
}

function sub_04c4a6f1(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(masterchefAddress)
    staticcall masterchefAddress.0x1526fe27 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if 10^18 * ext_call.return_data[0] > !(10^18 * ext_call.return_data[0]):
        revert with 0, 17
    if wftmAddress == 0xb97ef9ef8734c71904d8002f8b6bc66dd9c48a6e:
        if 2 * 10^18 * ext_call.return_data[0] / 10^18 / 10^18 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
            revert with 0, 17
        return (10^18 * 2 * 10^18 * ext_call.return_data[0] / 10^18 / 10^18)
    require ext_code.size(stor1)
    staticcall stor1.getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args 0xb97ef9ef8734c71904d8002f8b6bc66dd9c48a6e, wftmAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(wftmAddress)
    staticcall wftmAddress.0x70a08231 with:
            gas gas_remaining wei
           args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xb97ef9ef8734c71904d8002f8b6bc66dd9c48a6e)
    staticcall 0xb97ef9ef8734c71904d8002f8b6bc66dd9c48a6e.0x70a08231 with:
            gas gas_remaining wei
           args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    if not 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
        revert with 0, 18
    if 2 * 10^18 * ext_call.return_data[0] / 10^18 / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    return (10^18 * 2 * 10^18 * ext_call.return_data[0] / 10^18 / 10^18 * ext_call.return_data[0] / ext_call.return_data[0])
}

function sub_1d9fb7b1(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(masterchefAddress)
    staticcall masterchefAddress.0x1526fe27 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(masterchefAddress)
    staticcall masterchefAddress.0x17caf6f1 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(masterchefAddress)
    staticcall masterchefAddress.0xeacdaabc with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0xb38cf9b00b38cf9b00b38cf9b00b38cf9b00b38cf9b00b38cf9b00b38cf9b0:
        revert with 0, 17
    if 365 * ext_call.return_data[0] > 0xaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa:
        revert with 0, 17
    if 8760 * ext_call.return_data[0] > 0x123456789abcdf0123456789abcdf0123456789abcdf0123456789abcdf012:
        revert with 0, 17
    if wftmAddress == panicAddress:
        if 8760 * 24 * 3600 * ext_call.return_data[0] and 10^18 > -1 / 8760 * 24 * 3600 * ext_call.return_data[0]:
            revert with 0, 17
        if 8760 * 10^18 * 24 * 3600 * ext_call.return_data[0] / 10^18 and ext_call.return_data[32] > -1 / 8760 * 10^18 * 24 * 3600 * ext_call.return_data[0] / 10^18:
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).token1() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                gas gas_remaining wei
               args address(ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                gas gas_remaining wei
               args address(ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if 10^18 * ext_call.return_data[0] > !(10^18 * ext_call.return_data[0]):
            revert with 0, 17
        if 8760 * 10^18 * 24 * 3600 * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
            revert with 0, 17
        if not 2 * 10^18 * ext_call.return_data[0] / 10^18:
            revert with 0, 18
        return (10000 * 8760 * 10^18 * 24 * 3600 * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] / 2 * 10^18 * ext_call.return_data[0] / 10^18)
    require ext_code.size(stor1)
    staticcall stor1.getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args panicAddress, wftmAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(wftmAddress)
    staticcall wftmAddress.0x70a08231 with:
            gas gas_remaining wei
           args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(panicAddress)
    staticcall panicAddress.0x70a08231 with:
            gas gas_remaining wei
           args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    if 8760 * 24 * 3600 * ext_call.return_data[0] and 10^18 * ext_call.return_data[0] / ext_call.return_data[0] > -1 / 8760 * 24 * 3600 * ext_call.return_data[0]:
        revert with 0, 17
    if 8760 * 24 * 3600 * ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10^18 and ext_call.return_data[32] > -1 / 8760 * 24 * 3600 * ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10^18:
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if 10^18 * ext_call.return_data[0] > !(10^18 * ext_call.return_data[0]):
        revert with 0, 17
    if 8760 * 24 * 3600 * ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
        revert with 0, 17
    if not 2 * 10^18 * ext_call.return_data[0] / 10^18:
        revert with 0, 18
    return (10000 * 8760 * 24 * 3600 * ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] / 2 * 10^18 * ext_call.return_data[0] / 10^18)
}

function sub_c20b8ca0(?) payable {
    require calldata.size - 4 >= 32
    if 7 == arg1:
        require ext_code.size(stor1)
        staticcall stor1.getPair(address arg1, address arg2) with:
                gas gas_remaining wei
               args panicAddress, wftmAddress
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(masterchefAddress)
        staticcall masterchefAddress.0x1526fe27 with:
                gas gas_remaining wei
               args 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 128
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(masterchefAddress)
        staticcall masterchefAddress.0x17caf6f1 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(masterchefAddress)
        staticcall masterchefAddress.0xeacdaabc with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > 0xb38cf9b00b38cf9b00b38cf9b00b38cf9b00b38cf9b00b38cf9b00b38cf9b0:
            revert with 0, 17
        if 365 * ext_call.return_data[0] > 0xaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa:
            revert with 0, 17
        if 8760 * ext_call.return_data[0] > 0x123456789abcdf0123456789abcdf0123456789abcdf0123456789abcdf012:
            revert with 0, 17
        if 8760 * 24 * 3600 * ext_call.return_data[0] and ext_call.return_data[32] > -1 / 8760 * 24 * 3600 * ext_call.return_data[0]:
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        require ext_code.size(panicAddress)
        staticcall panicAddress.0x70a08231 with:
                gas gas_remaining wei
               args address(ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 17
        if 8760 * 24 * 3600 * ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[0] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
            revert with 0, 17
        if not 2 * ext_call.return_data[0]:
            revert with 0, 18
        return (10000 * 8760 * 24 * 3600 * ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[0] / 2 * ext_call.return_data[0])
    require ext_code.size(masterchefAddress)
    staticcall masterchefAddress.0x1526fe27 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(masterchefAddress)
    staticcall masterchefAddress.0x17caf6f1 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(masterchefAddress)
    staticcall masterchefAddress.0xeacdaabc with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0xb38cf9b00b38cf9b00b38cf9b00b38cf9b00b38cf9b00b38cf9b00b38cf9b0:
        revert with 0, 17
    if 365 * ext_call.return_data[0] > 0xaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa:
        revert with 0, 17
    if 8760 * ext_call.return_data[0] > 0x123456789abcdf0123456789abcdf0123456789abcdf0123456789abcdf012:
        revert with 0, 17
    if wftmAddress == panicAddress:
        if 8760 * 24 * 3600 * ext_call.return_data[0] and 10^18 > -1 / 8760 * 24 * 3600 * ext_call.return_data[0]:
            revert with 0, 17
        if 8760 * 10^18 * 24 * 3600 * ext_call.return_data[0] / 10^18 and ext_call.return_data[32] > -1 / 8760 * 10^18 * 24 * 3600 * ext_call.return_data[0] / 10^18:
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).token1() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                gas gas_remaining wei
               args address(ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                gas gas_remaining wei
               args address(ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if 10^18 * ext_call.return_data[0] > !(10^18 * ext_call.return_data[0]):
            revert with 0, 17
        if 8760 * 10^18 * 24 * 3600 * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
            revert with 0, 17
        if not 2 * 10^18 * ext_call.return_data[0] / 10^18:
            revert with 0, 18
        return (10000 * 8760 * 10^18 * 24 * 3600 * ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] / 2 * 10^18 * ext_call.return_data[0] / 10^18)
    require ext_code.size(stor1)
    staticcall stor1.getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args panicAddress, wftmAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(wftmAddress)
    staticcall wftmAddress.0x70a08231 with:
            gas gas_remaining wei
           args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(panicAddress)
    staticcall panicAddress.0x70a08231 with:
            gas gas_remaining wei
           args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    if 8760 * 24 * 3600 * ext_call.return_data[0] and 10^18 * ext_call.return_data[0] / ext_call.return_data[0] > -1 / 8760 * 24 * 3600 * ext_call.return_data[0]:
        revert with 0, 17
    if 8760 * 24 * 3600 * ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10^18 and ext_call.return_data[32] > -1 / 8760 * 24 * 3600 * ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10^18:
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if 10^18 * ext_call.return_data[0] > !(10^18 * ext_call.return_data[0]):
        revert with 0, 17
    if 8760 * 24 * 3600 * ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
        revert with 0, 17
    if not 2 * 10^18 * ext_call.return_data[0] / 10^18:
        revert with 0, 18
    return (10000 * 8760 * 24 * 3600 * ext_call.return_data[0] * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10^18 * ext_call.return_data[32] / ext_call.return_data[0] / 2 * 10^18 * ext_call.return_data[0] / 10^18)
}



}
