contract main {




// =====================  Runtime code  =====================


#
#  - sub_2be01190(?)
#  - sub_faad176c(?)
#
uint32 stor0;
address owner;
uint256 stor0;
mapping of uint8 stor1;
uint256 sub_54fc49e2;

function sub_54fc49e2(?) payable {
    return sub_54fc49e2
}

function owner() payable {
    return address(owner)
}

function sub_caecc2ba(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    return bool(stor1[address(arg1)])
}

function _fallback() payable {
    revert
}

function sub_7107a661(?) payable {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_54fc49e2 = arg1
}

function addTrader(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1[address(arg1)] = 1
}

function removeTrader(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1[address(arg1)] = 0
}

function withdrawETH() payable {
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_3d7acc6f(?) payable {
    require ext_code.size(0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c)
    staticcall 0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c.0xbf92857c with:
            gas gas_remaining wei
           args address(owner)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 192
    return ext_call.return_data[160]
}

function sub_e253b668(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    if not stor1[msg.sender]:
        revert with 0, '!trader'
    call this.address with:
         gas gas_remaining wei
        args arg1[all]
    if not ext_call.success:
        emit 0x5757b10b: 1
}

function sub_964261ca(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    if not stor1[msg.sender]:
        revert with 0, '!trader'
    call 0xaea2e71b631fa93683bcf256a8689dfa0e094fcd with:
         gas gas_remaining wei
        args arg1[all]
    if not ext_call.success:
        revert with 0, '7'
}

function getUserAccountData(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c)
    staticcall 0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c.0xbf92857c with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 192
    return ext_call.return_data[0], 
           ext_call.return_data[32],
           ext_call.return_data[64],
           ext_call.return_data[96],
           ext_call.return_data[128],
           ext_call.return_data[160]
}

function withdrawERC20(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_3ba14b3d(?) payable {
    require calldata.size - 4 >= 192
    require cd[132] <= test266151307()
    require cd[132] + 35 < calldata.size
    require ('cd', 132).length <= test266151307()
    require (32 * ('cd', 132).length) + 128 >= 96 and (32 * ('cd', 132).length) + 128 <= test266151307()
    require calldata.size >= cd[132] + (32 * ('cd', 132).length) + 36
    idx = 0
    s = cd[132] + 36
    t = 128
    while idx < ('cd', 132).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if not stor1[msg.sender]:
        revert with 0, '!trader'
    if cd[164] < block.timestamp:
        revert with 0, 'EXPIRED'
    require ext_code.size(0x58e57ca18b7a47112b877e31929798cd3d703b0f)
    call 0x58e57ca18b7a47112b877e31929798cd3d703b0f.exchange_underlying(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) with:
         gas gas_remaining wei
        args cd[4], cd[36], cd[68], cd[100]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_a3778c64(?) payable {
    require calldata.size - 4 >= 224
    require arg1 == address(arg1)
    require arg3 == address(arg3)
    require arg5 == address(arg5)
    require arg6 <= test266151307()
    require arg6 + 35 < calldata.size
    require arg6.length <= test266151307()
    require arg6 + arg6.length + 36 <= calldata.size
    if arg7 < block.timestamp:
        revert with 0, '6'
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(arg3))
    staticcall address(arg3).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    call address(arg5) with:
         gas gas_remaining wei
        args arg6[all]
    if not ext_call.success:
        revert with 0, '7'
    require this.address == msg.sender
    if address(arg1) != 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664:
        if address(arg1) != 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab:
            if address(arg1) != 0xd586e7f844cea2f87f50152665bcbc2c279d8d70:
                if address(arg1) != 0xc7198437980c041c805a1edcba50c1ce5db95118:
                    if address(arg1) != 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                        if address(arg1) != 0x50b7545627a5162f82a992c33b87adc75187b218:
                            if address(arg1) != 0x130966628846bfd36ff31a822705796e8cb8c18d:
                                revert with 0, '5'
    if address(arg3) != 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab:
        if address(arg3) != 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664:
            if address(arg3) != 0xd586e7f844cea2f87f50152665bcbc2c279d8d70:
                if address(arg3) != 0xc7198437980c041c805a1edcba50c1ce5db95118:
                    if address(arg3) != 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                        if address(arg3) != 0x50b7545627a5162f82a992c33b87adc75187b218:
                            if address(arg3) != 0x130966628846bfd36ff31a822705796e8cb8c18d:
                                revert with 0, '4'
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(arg3))
    staticcall address(arg3).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < ext_call.return_data[0] + arg2:
        revert with 0, '3'
    if ext_call.return_data[0] < ext_call.return_data[0] + arg4:
        revert with 0, '2'
}

function sub_32f84eb0(?) payable {
    require calldata.size - 4 >= 96
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require (32 * ('cd', 36).length) + 128 >= 96 and (32 * ('cd', 36).length) + 128 <= test266151307()
    require calldata.size >= cd[36] + (32 * ('cd', 36).length) + 36
    idx = 0
    s = cd[36] + 36
    t = 128
    while idx < ('cd', 36).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[68] == address(cd[68])
    if not stor1[msg.sender]:
        revert with 0, '!trader'
    mem[(32 * ('cd', 36).length) + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[(32 * ('cd', 36).length) + 132] = cd[4]
    mem[(32 * ('cd', 36).length) + 164] = 64
    mem[(32 * ('cd', 36).length) + 196] = ('cd', 36).length
    idx = 0
    s = 128
    t = (32 * ('cd', 36).length) + 228
    while idx < ('cd', 36).length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(cd[68]))
    staticcall address(cd[68]).getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args mem[(32 * ('cd', 36).length) + 132 len (96 * ('cd', 36).length) + 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * ('cd', 36).length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * ('cd', 36).length) + ceil32(return_data.size) + 128
    require return_data.size >= 32
    _39 = mem[(32 * ('cd', 36).length) + 128 len 4], Mask(224, 32, cd[4]) >> 32
    require mem[(32 * ('cd', 36).length) + 128 len 4], Mask(224, 32, cd[4]) >> 32 <= test266151307()
    require (32 * ('cd', 36).length) + return_data.size + 128 > (32 * ('cd', 36).length) + mem[(32 * ('cd', 36).length) + 128 len 4], Mask(224, 32, cd[4]) >> 32 + 159
    _40 = mem[(32 * ('cd', 36).length) + mem[(32 * ('cd', 36).length) + 128 len 4], Mask(224, 32, cd[4]) >> 32 + 128]
    if mem[(32 * ('cd', 36).length) + mem[(32 * ('cd', 36).length) + 128 len 4], Mask(224, 32, cd[4]) >> 32 + 128] <= test266151307():
        if (32 * mem[(32 * ('cd', 36).length) + mem[(32 * ('cd', 36).length) + 128 len 4], Mask(224, 32, cd[4]) >> 32 + 128]) + 32 >= 0 and (32 * ('cd', 36).length) + ceil32(return_data.size) + (32 * mem[(32 * ('cd', 36).length) + mem[(32 * ('cd', 36).length) + 128 len 4], Mask(224, 32, cd[4]) >> 32 + 128]) + 160 <= test266151307():
            mem[64] = (32 * ('cd', 36).length) + ceil32(return_data.size) + (32 * mem[(32 * ('cd', 36).length) + mem[(32 * ('cd', 36).length) + 128 len 4], Mask(224, 32, cd[4]) >> 32 + 128]) + 160
            mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 128] = mem[(32 * ('cd', 36).length) + mem[(32 * ('cd', 36).length) + 128 len 4], Mask(224, 32, cd[4]) >> 32 + 128]
            require return_data.size >= _39 + (32 * _40) + 32
            mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 160 len 32 * _40] = mem[(32 * ('cd', 36).length) + _39 + 160 len 32 * _40]
            if ('cd', 36).length - 1 < _40:
                return memory
                  from (32 * ('cd', 36).length - 1) + (32 * ('cd', 36).length) + ceil32(return_data.size) + 160
                   len 32
    revert
}

function sub_edbb6cb8(?) payable {
    require calldata.size - 4 >= 160
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require (32 * ('cd', 68).length) + 128 >= 96 and (32 * ('cd', 68).length) + 128 <= test266151307()
    require calldata.size >= cd[68] + (32 * ('cd', 68).length) + 36
    idx = 0
    s = cd[68] + 36
    t = 128
    while idx < ('cd', 68).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[132] == address(cd[132])
    if not stor1[msg.sender]:
        revert with 0, '!trader'
    require ('cd', 68).length - 1 < ('cd', 68).length
    require 0 < ('cd', 68).length
    if cd[100] < block.timestamp:
        revert with 0, 'EXPIRED'
    if mem[140 len 20] != 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664:
        if mem[140 len 20] != 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab:
            if mem[140 len 20] != 0xd586e7f844cea2f87f50152665bcbc2c279d8d70:
                if mem[140 len 20] != 0xc7198437980c041c805a1edcba50c1ce5db95118:
                    if mem[140 len 20] != 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                        if mem[140 len 20] != 0x50b7545627a5162f82a992c33b87adc75187b218:
                            if mem[140 len 20] != 0x130966628846bfd36ff31a822705796e8cb8c18d:
                                revert with 0, '5'
    if mem[(32 * ('cd', 68).length - 1) + 140 len 20] != 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab:
        if mem[(32 * ('cd', 68).length - 1) + 140 len 20] != 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664:
            if mem[(32 * ('cd', 68).length - 1) + 140 len 20] != 0xd586e7f844cea2f87f50152665bcbc2c279d8d70:
                if mem[(32 * ('cd', 68).length - 1) + 140 len 20] != 0xc7198437980c041c805a1edcba50c1ce5db95118:
                    if mem[(32 * ('cd', 68).length - 1) + 140 len 20] != 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
                        if mem[(32 * ('cd', 68).length - 1) + 140 len 20] != 0x50b7545627a5162f82a992c33b87adc75187b218:
                            if mem[(32 * ('cd', 68).length - 1) + 140 len 20] != 0x130966628846bfd36ff31a822705796e8cb8c18d:
                                revert with 0, '4'
    if address(cd[132]) != 0xe54ca86531e17ef3616d22ca28b0d458b6c89106:
        if address(cd[132]) != 0x60ae616a2155ee3d9a68541ba4544862310933d4:
            require 0x1b02da8cb0d097eb8d57a175b88c7d8b47997506 == address(cd[132])
    if not stor1[msg.sender]:
        revert with 0, '!trader'
    mem[(32 * ('cd', 68).length) + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[(32 * ('cd', 68).length) + 132] = cd[4]
    mem[(32 * ('cd', 68).length) + 164] = cd[36]
    mem[(32 * ('cd', 68).length) + 196] = 160
    mem[(32 * ('cd', 68).length) + 292] = ('cd', 68).length
    idx = 0
    s = 128
    t = (32 * ('cd', 68).length) + 324
    while idx < ('cd', 68).length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(32 * ('cd', 68).length) + 228] = this.address
    mem[(32 * ('cd', 68).length) + 260] = cd[100]
    require ext_code.size(address(cd[132]))
    call address(cd[132]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args mem[(32 * ('cd', 68).length) + 132 len (96 * ('cd', 68).length) + 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * ('cd', 68).length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * ('cd', 68).length) + ceil32(return_data.size) + 128
    require return_data.size >= 32
    require mem[(32 * ('cd', 68).length) + 128 len 4], Mask(224, 32, cd[4]) >> 32 <= test266151307()
    require (32 * ('cd', 68).length) + return_data.size + 128 > (32 * ('cd', 68).length) + mem[(32 * ('cd', 68).length) + 128 len 4], Mask(224, 32, cd[4]) >> 32 + 159
    require mem[(32 * ('cd', 68).length) + mem[(32 * ('cd', 68).length) + 128 len 4], Mask(224, 32, cd[4]) >> 32 + 128] <= test266151307()
    require (32 * mem[(32 * ('cd', 68).length) + mem[(32 * ('cd', 68).length) + 128 len 4], Mask(224, 32, cd[4]) >> 32 + 128]) + 32 >= 0 and (32 * ('cd', 68).length) + ceil32(return_data.size) + (32 * mem[(32 * ('cd', 68).length) + mem[(32 * ('cd', 68).length) + 128 len 4], Mask(224, 32, cd[4]) >> 32 + 128]) + 160 <= test266151307()
    require return_data.size >= mem[(32 * ('cd', 68).length) + 128 len 4], Mask(224, 32, cd[4]) >> 32 + (32 * mem[(32 * ('cd', 68).length) + mem[(32 * ('cd', 68).length) + 128 len 4], Mask(224, 32, cd[4]) >> 32 + 128]) + 32
}

function sub_fa4d63d5(?) payable {
    require calldata.size - 4 >= 32
    if not stor1[msg.sender]:
        revert with 0, '!trader'
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
    if not ext_code.size(0x46a51127c3ce23fb7ab1de06226147f446e4a857):
        revert with 0, 'Address: call to non-contract'
    mem[292 len 96] = unknown_0x23b872dd(?????), Mask(224, 0, stor0), uint32(stor0), address(this.address), Mask(224, 32, arg1) >> 32
    mem[416 len 4] = 0
    mem[388 len 0] = 0
    call 0x46a51127c3ce23fb7ab1de06226147f446e4a857 with:
         gas gas_remaining wei
        args Mask(224, 32, arg1) << 480, mem[388 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0x23b872dd(?????), Mask(224, 0, stor0), uint32(stor0), address(this.address), arg1
        if not unknown_0x23b872dd(?????), Mask(224, 0, stor0):
            revert with 0, 
                        32,
                        42,
                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[402 len 14],
                        0,
                        mem[420 len 4]
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[562 len 26]
        if not ext_code.size(0x46a51127c3ce23fb7ab1de06226147f446e4a857):
            revert with 0, 'Address: call to non-contract'
        mem[456 len 64] = 0, 0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c, 0
        call 0x46a51127c3ce23fb7ab1de06226147f446e4a857.0xf1a5a2c with:
             gas gas_remaining wei
            args 0, mem[392 len 24], 0, mem[520 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with unknown_0x23b872dd(?????), Mask(224, 0, stor0), uint32(stor0), address(this.address), arg1
            if not unknown_0x23b872dd(?????), Mask(224, 0, stor0):
                revert with 0, 32, 42, 0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[566 len 22]
            if not arg1:
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[726 len 26]
                if not ext_code.size(0x46a51127c3ce23fb7ab1de06226147f446e4a857):
                    revert with 0, 'Address: call to non-contract'
                mem[620 len 64] = approve(address arg1, uint256 arg2), 0x4f01aed16d97e3ab5ab2b501, 0, Mask(224, 32, arg1) >> 32
            else:
                require ext_code.size(0x46a51127c3ce23fb7ab1de06226147f446e4a857)
                staticcall 0x46a51127c3ce23fb7ab1de06226147f446e4a857.0xdd62ed3e with:
                        gas gas_remaining wei
                       args this.address, 0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                54,
                                0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                mem[578 len 10]
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[726 len 26]
                if not ext_code.size(0x46a51127c3ce23fb7ab1de06226147f446e4a857):
                    revert with 0, 'Address: call to non-contract'
                mem[620 len 64] = approve(address arg1, uint256 arg2), 0x4f01aed16d97e3ab5ab2b501, 0, Mask(224, 32, arg1) >> 32
                mem[684 len 0] = 0
            call 0x46a51127c3ce23fb7ab1de06226147f446e4a857.0xf1a5a2c with:
                 gas gas_remaining wei
                args Mask(224, 32, arg1) << 224, mem[684 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with unknown_0x23b872dd(?????), Mask(224, 0, stor0), uint32(stor0), address(this.address), arg1
                if not unknown_0x23b872dd(?????), Mask(224, 0, stor0):
                    revert with 0, 32, 42, 0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[730 len 22]
            else:
                mem[652 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[652]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 731 len 22]
            require ext_code.size(0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c)
            call 0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c.withdraw(address arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664, arg1, 0xa882157aa49fe9661723aeb8e764e9d7bbfa5b4
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c)
            staticcall 0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c.0xbf92857c with:
                    gas gas_remaining wei
                   args address(owner)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 192
            if ext_call.return_data[160] <= sub_54fc49e2:
                revert with 0, '2'
        mem[488 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[488]:
                revert with 0, 
                            32,
                            42,
                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 567 len 22]
        if arg1:
            require ext_code.size(0x46a51127c3ce23fb7ab1de06226147f446e4a857)
            staticcall 0x46a51127c3ce23fb7ab1de06226147f446e4a857.0xdd62ed3e with:
                    gas gas_remaining wei
                   args this.address, 0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 
                            32,
                            54,
                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                            mem[ceil32(return_data.size) + 579 len 10]
        if eth.balance(this.address) < 0:
            revert with 0, 
                        32,
                        38,
                        0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                        mem[ceil32(return_data.size) + 727 len 26]
        if not ext_code.size(0x46a51127c3ce23fb7ab1de06226147f446e4a857):
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 621 len 64] = approve(address arg1, uint256 arg2), 0x4f01aed16d97e3ab5ab2b501, 0, Mask(224, 32, arg1) >> 32
        mem[ceil32(return_data.size) + 713 len 4] = 0
        call 0x46a51127c3ce23fb7ab1de06226147f446e4a857.0xf1a5a2c with:
             gas gas_remaining wei
            args Mask(224, 32, arg1) << 224, mem[ceil32(return_data.size) + 685 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with unknown_0x23b872dd(?????), Mask(224, 0, stor0), uint32(stor0), address(this.address), arg1
            if not unknown_0x23b872dd(?????), Mask(224, 0, stor0):
                revert with 0, 
                            32,
                            42,
                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 731 len 22]
            require ext_code.size(0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c)
            call 0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c.withdraw(address arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664, arg1, 0xa882157aa49fe9661723aeb8e764e9d7bbfa5b4
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c)
            staticcall 0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c.0xbf92857c with:
                    gas gas_remaining wei
                   args address(owner)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 192
            if ext_call.return_data[160] <= sub_54fc49e2:
                revert with 0, '2'
        mem[ceil32(return_data.size) + 653 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[ceil32(return_data.size) + 653]:
                revert with 0, 
                            32,
                            42,
                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[(2 * ceil32(return_data.size)) + 732 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
        mem[(2 * ceil32(return_data.size)) + 626] = 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664
        mem[(2 * ceil32(return_data.size)) + 658] = arg1
        mem[(2 * ceil32(return_data.size)) + 690] = 0xa882157aa49fe9661723aeb8e764e9d7bbfa5b4
        require ext_code.size(0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c)
        call 0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c.withdraw(address arg1, uint256 arg2, address arg3) with:
             gas gas_remaining wei
            args 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664, arg1, 0xa882157aa49fe9661723aeb8e764e9d7bbfa5b4, mem[(2 * ceil32(return_data.size)) + 722 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
        mem[(2 * ceil32(return_data.size)) + 622] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(4 * ceil32(return_data.size)) + 626] = address(owner)
        require ext_code.size(0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c)
        staticcall 0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c.0xbf92857c with:
                gas gas_remaining wei
               args mem[(4 * ceil32(return_data.size)) + 626 len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 32]
        mem[(4 * ceil32(return_data.size)) + 622 len 192] = ext_call.return_data[0 len 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 192
        if ext_call.return_data[160] > sub_54fc49e2:
        mem[(4 * ceil32(return_data.size)) + 622] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(4 * ceil32(return_data.size)) + 626] = 32
        mem[(4 * ceil32(return_data.size)) + 658] = 1
        mem[(4 * ceil32(return_data.size)) + 690] = '2'
        revert with memory
          from (4 * ceil32(return_data.size)) + 622
           len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
    mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size:
            revert with ext_call.return_data[0 len return_data.size]
        revert with 0, 'SafeERC20: low-level call failed'
    if return_data.size:
        require return_data.size >= 32
        if not mem[324]:
            revert with 0, 
                        32,
                        42,
                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[ceil32(return_data.size) + 403 len 22]
    if eth.balance(this.address) < 0:
        revert with 0, 
                    32,
                    38,
                    0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                    mem[ceil32(return_data.size) + 563 len 26]
    if not ext_code.size(0x46a51127c3ce23fb7ab1de06226147f446e4a857):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 457 len 64] = 0, 0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c, 0
    call 0x46a51127c3ce23fb7ab1de06226147f446e4a857.0xf1a5a2c with:
         gas gas_remaining wei
        args 0, mem[ceil32(return_data.size) + 393 len 28], mem[ceil32(return_data.size) + 521 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0x23b872dd(?????), Mask(224, 0, stor0), uint32(stor0), address(this.address), arg1
        if not unknown_0x23b872dd(?????), Mask(224, 0, stor0):
            revert with 0, 
                        32,
                        42,
                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[ceil32(return_data.size) + 567 len 22]
        if arg1:
            require ext_code.size(0x46a51127c3ce23fb7ab1de06226147f446e4a857)
            staticcall 0x46a51127c3ce23fb7ab1de06226147f446e4a857.0xdd62ed3e with:
                    gas gas_remaining wei
                   args this.address, 0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 
                            32,
                            54,
                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                            mem[ceil32(return_data.size) + 579 len 10]
        if eth.balance(this.address) < 0:
            revert with 0, 
                        32,
                        38,
                        0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                        mem[ceil32(return_data.size) + 727 len 26]
        if not ext_code.size(0x46a51127c3ce23fb7ab1de06226147f446e4a857):
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 621 len 64] = approve(address arg1, uint256 arg2), 0x4f01aed16d97e3ab5ab2b501, 0, Mask(224, 32, arg1) >> 32
        call 0x46a51127c3ce23fb7ab1de06226147f446e4a857.0xf1a5a2c with:
             gas gas_remaining wei
            args Mask(224, 32, arg1) << 224, mem[ceil32(return_data.size) + 685 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with unknown_0x23b872dd(?????), Mask(224, 0, stor0), uint32(stor0), address(this.address), arg1
            if not unknown_0x23b872dd(?????), Mask(224, 0, stor0):
                revert with 0, 
                            32,
                            42,
                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 731 len 22]
        else:
            mem[ceil32(return_data.size) + 653 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[ceil32(return_data.size) + 653]:
                    revert with 0, 
                                32,
                                42,
                                0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(2 * ceil32(return_data.size)) + 732 len 22]
        require ext_code.size(0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c)
        call 0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c.withdraw(address arg1, uint256 arg2, address arg3) with:
             gas gas_remaining wei
            args 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664, arg1, 0xa882157aa49fe9661723aeb8e764e9d7bbfa5b4
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c)
        staticcall 0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c.0xbf92857c with:
                gas gas_remaining wei
               args address(owner)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 192
        if ext_call.return_data[160] <= sub_54fc49e2:
            revert with 0, '2'
    mem[ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size:
            revert with ext_call.return_data[0 len return_data.size]
        revert with 0, 'SafeERC20: low-level call failed'
    if return_data.size:
        require return_data.size >= 32
        if not mem[ceil32(return_data.size) + 489]:
            revert with 0, 
                        32,
                        42,
                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[(2 * ceil32(return_data.size)) + 568 len 22]
    if arg1:
        require ext_code.size(0x46a51127c3ce23fb7ab1de06226147f446e4a857)
        staticcall 0x46a51127c3ce23fb7ab1de06226147f446e4a857.0xdd62ed3e with:
                gas gas_remaining wei
               args this.address, 0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 
                        32,
                        54,
                        0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                        mem[(2 * ceil32(return_data.size)) + 580 len 10]
    if eth.balance(this.address) < 0:
        revert with 0, 
                    32,
                    38,
                    0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                    mem[(2 * ceil32(return_data.size)) + 728 len 26]
    if not ext_code.size(0x46a51127c3ce23fb7ab1de06226147f446e4a857):
        revert with 0, 'Address: call to non-contract'
    mem[(2 * ceil32(return_data.size)) + 622 len 64] = approve(address arg1, uint256 arg2), 0x4f01aed16d97e3ab5ab2b501, 0, Mask(224, 32, arg1) >> 32
    mem[(2 * ceil32(return_data.size)) + 714 len 4] = 0
    call 0x46a51127c3ce23fb7ab1de06226147f446e4a857.0xf1a5a2c with:
         gas gas_remaining wei
        args Mask(224, 32, arg1) << 224, mem[(2 * ceil32(return_data.size)) + 686 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0x23b872dd(?????), Mask(224, 0, stor0), uint32(stor0), address(this.address), arg1
        if not unknown_0x23b872dd(?????), Mask(224, 0, stor0):
            revert with 0, 
                        32,
                        42,
                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[(2 * ceil32(return_data.size)) + 732 len 22]
        require ext_code.size(0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c)
        call 0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c.withdraw(address arg1, uint256 arg2, address arg3) with:
             gas gas_remaining wei
            args 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664, arg1, 0xa882157aa49fe9661723aeb8e764e9d7bbfa5b4
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c)
        staticcall 0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c.0xbf92857c with:
                gas gas_remaining wei
               args address(owner)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 192
        if ext_call.return_data[160] <= sub_54fc49e2:
            revert with 0, '2'
    mem[(2 * ceil32(return_data.size)) + 654 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size:
            revert with ext_call.return_data[0 len return_data.size]
        revert with 0, 'SafeERC20: low-level call failed'
    if return_data.size:
        require return_data.size >= 32
        if not mem[(2 * ceil32(return_data.size)) + 654]:
            revert with 0, 
                        32,
                        42,
                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 733 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
    mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 627] = 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664
    mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 659] = arg1
    mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 691] = 0xa882157aa49fe9661723aeb8e764e9d7bbfa5b4
    require ext_code.size(0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c)
    call 0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c.withdraw(address arg1, uint256 arg2, address arg3) with:
         gas gas_remaining wei
        args 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664, arg1, 0xa882157aa49fe9661723aeb8e764e9d7bbfa5b4, mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 723 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
    mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 623] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 627] = address(owner)
    require ext_code.size(0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c)
    staticcall 0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c.0xbf92857c with:
            gas gas_remaining wei
           args mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 627 len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 32]
    mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 623 len 192] = ext_call.return_data[0 len 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 192
    if ext_call.return_data[160] > sub_54fc49e2:
    mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 623] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 627] = 32
    mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 659] = 1
    mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 691] = '2'
    revert with memory
      from ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 623
       len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
}

function sub_9af31f8e(?) payable {
    require calldata.size - 4 >= 32
    if not stor1[msg.sender]:
        revert with 0, '!trader'
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
    if not ext_code.size(0xdfe521292ece2a4f44242efbcd66bc594ca9714b):
        revert with 0, 'Address: call to non-contract'
    mem[292 len 96] = unknown_0x23b872dd(?????), Mask(224, 0, stor0), uint32(stor0), address(this.address), Mask(224, 32, arg1) >> 32
    mem[416 len 4] = 0
    mem[388 len 0] = 0
    call 0xdfe521292ece2a4f44242efbcd66bc594ca9714b with:
         gas gas_remaining wei
        args Mask(224, 32, arg1) << 480, mem[388 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0x23b872dd(?????), Mask(224, 0, stor0), uint32(stor0), address(this.address), arg1
        if not unknown_0x23b872dd(?????), Mask(224, 0, stor0):
            revert with 0, 
                        32,
                        42,
                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[402 len 14],
                        0,
                        mem[420 len 4]
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[562 len 26]
        if not ext_code.size(0xdfe521292ece2a4f44242efbcd66bc594ca9714b):
            revert with 0, 'Address: call to non-contract'
        mem[456 len 64] = 0, 0x8a47f74d1ee0e2edeb4f3a7e64ef3bd8e11d27c8, 0
        call 0xdfe521292ece2a4f44242efbcd66bc594ca9714b.0xe11d27c8 with:
             gas gas_remaining wei
            args 0, mem[392 len 24], 0, mem[520 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with unknown_0x23b872dd(?????), Mask(224, 0, stor0), uint32(stor0), address(this.address), arg1
            if not unknown_0x23b872dd(?????), Mask(224, 0, stor0):
                revert with 0, 32, 42, 0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[566 len 22]
            if arg1:
                require ext_code.size(0xdfe521292ece2a4f44242efbcd66bc594ca9714b)
                staticcall 0xdfe521292ece2a4f44242efbcd66bc594ca9714b.0xdd62ed3e with:
                        gas gas_remaining wei
                       args this.address, 0x8a47f74d1ee0e2edeb4f3a7e64ef3bd8e11d27c8
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                54,
                                0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                mem[578 len 10]
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[726 len 26]
            if not ext_code.size(0xdfe521292ece2a4f44242efbcd66bc594ca9714b):
                revert with 0, 'Address: call to non-contract'
            mem[620 len 64] = approve(address arg1, uint256 arg2), 0x8a47f74d1ee0e2edeb4f3a7e, 0, Mask(224, 32, arg1) >> 32
            call 0xdfe521292ece2a4f44242efbcd66bc594ca9714b.0xe11d27c8 with:
                 gas gas_remaining wei
                args Mask(224, 32, arg1) << 224, mem[684 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with unknown_0x23b872dd(?????), Mask(224, 0, stor0), uint32(stor0), address(this.address), arg1
                if not unknown_0x23b872dd(?????), Mask(224, 0, stor0):
                    revert with 0, 32, 42, 0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[730 len 22]
            else:
                mem[652 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[652]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 731 len 22]
            require ext_code.size(0x8a47f74d1ee0e2edeb4f3a7e64ef3bd8e11d27c8)
            call 0x8a47f74d1ee0e2edeb4f3a7e64ef3bd8e11d27c8.withdrawETH(address arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args 0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c, arg1, 0xeab070713c14a5912e8407494643c644c9d1e35
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c)
            staticcall 0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c.0xbf92857c with:
                    gas gas_remaining wei
                   args address(owner)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 192
            if ext_call.return_data[160] <= sub_54fc49e2:
                revert with 0, '2'
        mem[488 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if not return_data.size:
            if not arg1:
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[ceil32(return_data.size) + 727 len 26]
                if not ext_code.size(0xdfe521292ece2a4f44242efbcd66bc594ca9714b):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 621 len 64] = approve(address arg1, uint256 arg2), 0x8a47f74d1ee0e2edeb4f3a7e, 0, Mask(224, 32, arg1) >> 32
                mem[ceil32(return_data.size) + 713 len 4] = 0
                call 0xdfe521292ece2a4f44242efbcd66bc594ca9714b.0xe11d27c8 with:
                     gas gas_remaining wei
                    args Mask(224, 32, arg1) << 224, mem[ceil32(return_data.size) + 685 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0x23b872dd(?????), Mask(224, 0, stor0), uint32(stor0), address(this.address), arg1
                    if not unknown_0x23b872dd(?????), Mask(224, 0, stor0):
                        revert with 0, 
                                    32,
                                    42,
                                    0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 731 len 22]
                    require ext_code.size(0x8a47f74d1ee0e2edeb4f3a7e64ef3bd8e11d27c8)
                    call 0x8a47f74d1ee0e2edeb4f3a7e64ef3bd8e11d27c8.withdrawETH(address arg1, uint256 arg2, address arg3) with:
                         gas gas_remaining wei
                        args 0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c, arg1, 0xeab070713c14a5912e8407494643c644c9d1e35
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c)
                    staticcall 0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c.0xbf92857c with:
                            gas gas_remaining wei
                           args address(owner)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 192
                    if ext_call.return_data[160] <= sub_54fc49e2:
                        revert with 0, '2'
                mem[ceil32(return_data.size) + 653 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[ceil32(return_data.size) + 653]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 732 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                require ext_code.size(0x8a47f74d1ee0e2edeb4f3a7e64ef3bd8e11d27c8)
                call 0x8a47f74d1ee0e2edeb4f3a7e64ef3bd8e11d27c8.withdrawETH(address arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args 0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c, arg1, 0xeab070713c14a5912e8407494643c644c9d1e35, mem[(2 * ceil32(return_data.size)) + 722 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c)
                staticcall 0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c.0xbf92857c with:
                        gas gas_remaining wei
                       args address(owner), mem[(2 * ceil32(return_data.size)) + 658 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                mem[(2 * ceil32(return_data.size)) + 622 len 192] = ext_call.return_data[0 len 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 192
                if ext_call.return_data[160] > sub_54fc49e2:
                mem[(4 * ceil32(return_data.size)) + 622] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 626] = 32
                mem[(4 * ceil32(return_data.size)) + 658] = 1
                mem[(4 * ceil32(return_data.size)) + 690] = '2'
                revert with memory
                  from (4 * ceil32(return_data.size)) + 622
                   len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
            require ext_code.size(0xdfe521292ece2a4f44242efbcd66bc594ca9714b)
            staticcall 0xdfe521292ece2a4f44242efbcd66bc594ca9714b.0xdd62ed3e with:
                    gas gas_remaining wei
                   args this.address, 0x8a47f74d1ee0e2edeb4f3a7e64ef3bd8e11d27c8
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 
                            32,
                            54,
                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                            mem[ceil32(return_data.size) + 579 len 10]
            if eth.balance(this.address) < 0:
                revert with 0, 
                            32,
                            38,
                            0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                            mem[ceil32(return_data.size) + 727 len 26]
            if not ext_code.size(0xdfe521292ece2a4f44242efbcd66bc594ca9714b):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 621 len 64] = approve(address arg1, uint256 arg2), 0x8a47f74d1ee0e2edeb4f3a7e, 0, Mask(224, 32, arg1) >> 32
            mem[ceil32(return_data.size) + 685 len 0] = 0
            call 0xdfe521292ece2a4f44242efbcd66bc594ca9714b.0xe11d27c8 with:
                 gas gas_remaining wei
                args Mask(224, 32, arg1) << 224, mem[ceil32(return_data.size) + 685 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with unknown_0x23b872dd(?????), Mask(224, 0, stor0), uint32(stor0), address(this.address), arg1
                if not unknown_0x23b872dd(?????), Mask(224, 0, stor0):
                    revert with 0, 
                                32,
                                42,
                                0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 731 len 22]
            else:
                mem[ceil32(return_data.size) + 653 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[ceil32(return_data.size) + 653]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 732 len 22]
            require ext_code.size(0x8a47f74d1ee0e2edeb4f3a7e64ef3bd8e11d27c8)
            call 0x8a47f74d1ee0e2edeb4f3a7e64ef3bd8e11d27c8.withdrawETH(address arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args 0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c, arg1, 0xeab070713c14a5912e8407494643c644c9d1e35
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c)
            staticcall 0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c.0xbf92857c with:
                    gas gas_remaining wei
                   args address(owner)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 192
            if ext_call.return_data[160] <= sub_54fc49e2:
                revert with 0, '2'
        require return_data.size >= 32
        if not mem[488]:
            revert with 0, 
                        32,
                        42,
                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[ceil32(return_data.size) + 567 len 22]
        if arg1:
            require ext_code.size(0xdfe521292ece2a4f44242efbcd66bc594ca9714b)
            staticcall 0xdfe521292ece2a4f44242efbcd66bc594ca9714b.0xdd62ed3e with:
                    gas gas_remaining wei
                   args this.address, 0x8a47f74d1ee0e2edeb4f3a7e64ef3bd8e11d27c8
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 
                            32,
                            54,
                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                            mem[ceil32(return_data.size) + 579 len 10]
        if eth.balance(this.address) < 0:
            revert with 0, 
                        32,
                        38,
                        0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                        mem[ceil32(return_data.size) + 727 len 26]
        if not ext_code.size(0xdfe521292ece2a4f44242efbcd66bc594ca9714b):
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 621 len 64] = approve(address arg1, uint256 arg2), 0x8a47f74d1ee0e2edeb4f3a7e, 0, Mask(224, 32, arg1) >> 32
        mem[ceil32(return_data.size) + 713 len 4] = 0
        call 0xdfe521292ece2a4f44242efbcd66bc594ca9714b.0xe11d27c8 with:
             gas gas_remaining wei
            args Mask(224, 32, arg1) << 224, mem[ceil32(return_data.size) + 685 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with unknown_0x23b872dd(?????), Mask(224, 0, stor0), uint32(stor0), address(this.address), arg1
            if not unknown_0x23b872dd(?????), Mask(224, 0, stor0):
                revert with 0, 
                            32,
                            42,
                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 731 len 22]
            require ext_code.size(0x8a47f74d1ee0e2edeb4f3a7e64ef3bd8e11d27c8)
            call 0x8a47f74d1ee0e2edeb4f3a7e64ef3bd8e11d27c8.withdrawETH(address arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args 0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c, arg1, 0xeab070713c14a5912e8407494643c644c9d1e35
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c)
            staticcall 0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c.0xbf92857c with:
                    gas gas_remaining wei
                   args address(owner)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 192
            if ext_call.return_data[160] <= sub_54fc49e2:
                revert with 0, '2'
        mem[ceil32(return_data.size) + 653 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[ceil32(return_data.size) + 653]:
                revert with 0, 
                            32,
                            42,
                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[(2 * ceil32(return_data.size)) + 732 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
        require ext_code.size(0x8a47f74d1ee0e2edeb4f3a7e64ef3bd8e11d27c8)
        call 0x8a47f74d1ee0e2edeb4f3a7e64ef3bd8e11d27c8.withdrawETH(address arg1, uint256 arg2, address arg3) with:
             gas gas_remaining wei
            args 0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c, arg1, 0xeab070713c14a5912e8407494643c644c9d1e35, mem[(2 * ceil32(return_data.size)) + 722 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c)
        staticcall 0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c.0xbf92857c with:
                gas gas_remaining wei
               args address(owner), mem[(2 * ceil32(return_data.size)) + 658 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
        mem[(2 * ceil32(return_data.size)) + 622 len 192] = ext_call.return_data[0 len 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 192
        if ext_call.return_data[160] > sub_54fc49e2:
        mem[(4 * ceil32(return_data.size)) + 622] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(4 * ceil32(return_data.size)) + 626] = 32
        mem[(4 * ceil32(return_data.size)) + 658] = 1
        mem[(4 * ceil32(return_data.size)) + 690] = '2'
        revert with memory
          from (4 * ceil32(return_data.size)) + 622
           len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
    mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size:
            revert with ext_call.return_data[0 len return_data.size]
        revert with 0, 'SafeERC20: low-level call failed'
    if not return_data.size:
        if eth.balance(this.address) < 0:
            revert with 0, 
                        32,
                        38,
                        0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                        mem[ceil32(return_data.size) + 563 len 26]
        if not ext_code.size(0xdfe521292ece2a4f44242efbcd66bc594ca9714b):
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 457 len 64] = 0, 0x8a47f74d1ee0e2edeb4f3a7e64ef3bd8e11d27c8, 0
        call 0xdfe521292ece2a4f44242efbcd66bc594ca9714b.0xe11d27c8 with:
             gas gas_remaining wei
            args 0, mem[ceil32(return_data.size) + 393 len 28], mem[ceil32(return_data.size) + 521 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with unknown_0x23b872dd(?????), Mask(224, 0, stor0), uint32(stor0), address(this.address), arg1
            if not unknown_0x23b872dd(?????), Mask(224, 0, stor0):
                revert with 0, 
                            32,
                            42,
                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 567 len 22]
            if arg1:
                require ext_code.size(0xdfe521292ece2a4f44242efbcd66bc594ca9714b)
                staticcall 0xdfe521292ece2a4f44242efbcd66bc594ca9714b.0xdd62ed3e with:
                        gas gas_remaining wei
                       args this.address, 0x8a47f74d1ee0e2edeb4f3a7e64ef3bd8e11d27c8
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                54,
                                0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                mem[ceil32(return_data.size) + 579 len 10]
            if eth.balance(this.address) < 0:
                revert with 0, 
                            32,
                            38,
                            0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                            mem[ceil32(return_data.size) + 727 len 26]
            if not ext_code.size(0xdfe521292ece2a4f44242efbcd66bc594ca9714b):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 621 len 64] = approve(address arg1, uint256 arg2), 0x8a47f74d1ee0e2edeb4f3a7e, 0, Mask(224, 32, arg1) >> 32
            call 0xdfe521292ece2a4f44242efbcd66bc594ca9714b.0xe11d27c8 with:
                 gas gas_remaining wei
                args Mask(224, 32, arg1) << 224, mem[ceil32(return_data.size) + 685 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with unknown_0x23b872dd(?????), Mask(224, 0, stor0), uint32(stor0), address(this.address), arg1
                if not unknown_0x23b872dd(?????), Mask(224, 0, stor0):
                    revert with 0, 
                                32,
                                42,
                                0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 731 len 22]
            else:
                mem[ceil32(return_data.size) + 653 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[ceil32(return_data.size) + 653]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 732 len 22]
            require ext_code.size(0x8a47f74d1ee0e2edeb4f3a7e64ef3bd8e11d27c8)
            call 0x8a47f74d1ee0e2edeb4f3a7e64ef3bd8e11d27c8.withdrawETH(address arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args 0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c, arg1, 0xeab070713c14a5912e8407494643c644c9d1e35
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c)
            staticcall 0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c.0xbf92857c with:
                    gas gas_remaining wei
                   args address(owner)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 192
            if ext_call.return_data[160] <= sub_54fc49e2:
                revert with 0, '2'
        mem[ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[ceil32(return_data.size) + 489]:
                revert with 0, 
                            32,
                            42,
                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[(2 * ceil32(return_data.size)) + 568 len 22]
        if arg1:
            require ext_code.size(0xdfe521292ece2a4f44242efbcd66bc594ca9714b)
            staticcall 0xdfe521292ece2a4f44242efbcd66bc594ca9714b.0xdd62ed3e with:
                    gas gas_remaining wei
                   args this.address, 0x8a47f74d1ee0e2edeb4f3a7e64ef3bd8e11d27c8
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 
                            32,
                            54,
                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                            mem[(2 * ceil32(return_data.size)) + 580 len 10]
    else:
        require return_data.size >= 32
        if not mem[324]:
            revert with 0, 
                        32,
                        42,
                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[ceil32(return_data.size) + 403 len 22]
        if eth.balance(this.address) < 0:
            revert with 0, 
                        32,
                        38,
                        0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                        mem[ceil32(return_data.size) + 563 len 26]
        if not ext_code.size(0xdfe521292ece2a4f44242efbcd66bc594ca9714b):
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 457 len 64] = 0, 0x8a47f74d1ee0e2edeb4f3a7e64ef3bd8e11d27c8, 0
        call 0xdfe521292ece2a4f44242efbcd66bc594ca9714b.0xe11d27c8 with:
             gas gas_remaining wei
            args 0, mem[ceil32(return_data.size) + 393 len 28], mem[ceil32(return_data.size) + 521 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with unknown_0x23b872dd(?????), Mask(224, 0, stor0), uint32(stor0), address(this.address), arg1
            if not unknown_0x23b872dd(?????), Mask(224, 0, stor0):
                revert with 0, 
                            32,
                            42,
                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 567 len 22]
            if arg1:
                require ext_code.size(0xdfe521292ece2a4f44242efbcd66bc594ca9714b)
                staticcall 0xdfe521292ece2a4f44242efbcd66bc594ca9714b.0xdd62ed3e with:
                        gas gas_remaining wei
                       args this.address, 0x8a47f74d1ee0e2edeb4f3a7e64ef3bd8e11d27c8
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                54,
                                0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                mem[ceil32(return_data.size) + 579 len 10]
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[ceil32(return_data.size) + 727 len 26]
                if not ext_code.size(0xdfe521292ece2a4f44242efbcd66bc594ca9714b):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 621 len 64] = approve(address arg1, uint256 arg2), 0x8a47f74d1ee0e2edeb4f3a7e, 0, Mask(224, 32, arg1) >> 32
                call 0xdfe521292ece2a4f44242efbcd66bc594ca9714b.0xe11d27c8 with:
                     gas gas_remaining wei
                    args Mask(224, 32, arg1) << 224, mem[ceil32(return_data.size) + 685 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0x23b872dd(?????), Mask(224, 0, stor0), uint32(stor0), address(this.address), arg1
                    if not unknown_0x23b872dd(?????), Mask(224, 0, stor0):
                        revert with 0, 
                                    32,
                                    42,
                                    0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 731 len 22]
                else:
                    mem[ceil32(return_data.size) + 653 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 653]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 732 len 22]
                require ext_code.size(0x8a47f74d1ee0e2edeb4f3a7e64ef3bd8e11d27c8)
                call 0x8a47f74d1ee0e2edeb4f3a7e64ef3bd8e11d27c8.withdrawETH(address arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args 0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c, arg1, 0xeab070713c14a5912e8407494643c644c9d1e35
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c)
                staticcall 0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c.0xbf92857c with:
                        gas gas_remaining wei
                       args address(owner)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 192
                if ext_call.return_data[160] <= sub_54fc49e2:
                    revert with 0, '2'
            if eth.balance(this.address) < 0:
                revert with 0, 
                            32,
                            38,
                            0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                            mem[ceil32(return_data.size) + 727 len 26]
            if not ext_code.size(0xdfe521292ece2a4f44242efbcd66bc594ca9714b):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 621 len 64] = approve(address arg1, uint256 arg2), 0x8a47f74d1ee0e2edeb4f3a7e, 0, Mask(224, 32, arg1) >> 32
            mem[ceil32(return_data.size) + 713 len 4] = 0
            mem[ceil32(return_data.size) + 685 len 0] = 0
            call 0xdfe521292ece2a4f44242efbcd66bc594ca9714b.0xe11d27c8 with:
                 gas gas_remaining wei
                args Mask(224, 32, arg1) << 224, mem[ceil32(return_data.size) + 685 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with unknown_0x23b872dd(?????), Mask(224, 0, stor0), uint32(stor0), address(this.address), arg1
                if not unknown_0x23b872dd(?????), Mask(224, 0, stor0):
                    revert with 0, 
                                32,
                                42,
                                0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 731 len 22]
                require ext_code.size(0x8a47f74d1ee0e2edeb4f3a7e64ef3bd8e11d27c8)
                call 0x8a47f74d1ee0e2edeb4f3a7e64ef3bd8e11d27c8.withdrawETH(address arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args 0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c, arg1, 0xeab070713c14a5912e8407494643c644c9d1e35
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c)
                staticcall 0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c.0xbf92857c with:
                        gas gas_remaining wei
                       args address(owner)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 192
                if ext_call.return_data[160] <= sub_54fc49e2:
                    revert with 0, '2'
            mem[ceil32(return_data.size) + 653 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 
                            'SafeERC20: low-level call failed',
                            mem[(2 * ceil32(return_data.size)) + 722 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            if return_data.size:
                require return_data.size >= 32
                if not mem[ceil32(return_data.size) + 653]:
                    revert with 0, 
                                32,
                                42,
                                0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(2 * ceil32(return_data.size)) + 732 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
            require ext_code.size(0x8a47f74d1ee0e2edeb4f3a7e64ef3bd8e11d27c8)
            call 0x8a47f74d1ee0e2edeb4f3a7e64ef3bd8e11d27c8.withdrawETH(address arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args 0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c, arg1, 0xeab070713c14a5912e8407494643c644c9d1e35, mem[(2 * ceil32(return_data.size)) + 722 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c)
            staticcall 0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c.0xbf92857c with:
                    gas gas_remaining wei
                   args address(owner)
            mem[(2 * ceil32(return_data.size)) + 622 len 192] = ext_call.return_data[0 len 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 192
            if ext_call.return_data[160] > sub_54fc49e2:
            mem[(4 * ceil32(return_data.size)) + 622] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(4 * ceil32(return_data.size)) + 626] = 32
            mem[(4 * ceil32(return_data.size)) + 658] = 1
            mem[(4 * ceil32(return_data.size)) + 690] = '2'
            revert with memory
              from (4 * ceil32(return_data.size)) + 622
               len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
        mem[ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if not return_data.size:
            if not arg1:
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[(2 * ceil32(return_data.size)) + 728 len 26]
                if not ext_code.size(0xdfe521292ece2a4f44242efbcd66bc594ca9714b):
                    revert with 0, 'Address: call to non-contract'
                mem[(2 * ceil32(return_data.size)) + 622 len 64] = approve(address arg1, uint256 arg2), 0x8a47f74d1ee0e2edeb4f3a7e, 0, Mask(224, 32, arg1) >> 32
                mem[(2 * ceil32(return_data.size)) + 686 len 0] = 0
                call 0xdfe521292ece2a4f44242efbcd66bc594ca9714b.0xe11d27c8 with:
                     gas gas_remaining wei
                    args Mask(224, 32, arg1) << 224, mem[(2 * ceil32(return_data.size)) + 686 len 4]
                if return_data.size:
                    mem[(2 * ceil32(return_data.size)) + 654 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[(2 * ceil32(return_data.size)) + 654]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 733 len 22]
                    require ext_code.size(0x8a47f74d1ee0e2edeb4f3a7e64ef3bd8e11d27c8)
                    call 0x8a47f74d1ee0e2edeb4f3a7e64ef3bd8e11d27c8.withdrawETH(address arg1, uint256 arg2, address arg3) with:
                         gas gas_remaining wei
                        args 0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c, arg1, 0xeab070713c14a5912e8407494643c644c9d1e35
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c)
                    staticcall 0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c.0xbf92857c with:
                            gas gas_remaining wei
                           args address(owner)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 192
                    if ext_call.return_data[160] <= sub_54fc49e2:
                        revert with 0, '2'
                if not ext_call.success:
                    revert with unknown_0x23b872dd(?????), Mask(224, 0, stor0), uint32(stor0), address(this.address), arg1
                if not unknown_0x23b872dd(?????), Mask(224, 0, stor0):
                    revert with 0, 
                                32,
                                42,
                                0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(2 * ceil32(return_data.size)) + 732 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                require ext_code.size(0x8a47f74d1ee0e2edeb4f3a7e64ef3bd8e11d27c8)
                call 0x8a47f74d1ee0e2edeb4f3a7e64ef3bd8e11d27c8.withdrawETH(address arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args 0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c, arg1, 0xeab070713c14a5912e8407494643c644c9d1e35, mem[(2 * ceil32(return_data.size)) + 722 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c)
                staticcall 0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c.0xbf92857c with:
                        gas gas_remaining wei
                       args address(owner)
                mem[(2 * ceil32(return_data.size)) + 622 len 192] = ext_call.return_data[0 len 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 192
                if ext_call.return_data[160] > sub_54fc49e2:
                mem[(4 * ceil32(return_data.size)) + 622] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 626] = 32
                mem[(4 * ceil32(return_data.size)) + 658] = 1
                mem[(4 * ceil32(return_data.size)) + 690] = '2'
                revert with memory
                  from (4 * ceil32(return_data.size)) + 622
                   len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
            require ext_code.size(0xdfe521292ece2a4f44242efbcd66bc594ca9714b)
            staticcall 0xdfe521292ece2a4f44242efbcd66bc594ca9714b.0xdd62ed3e with:
                    gas gas_remaining wei
                   args this.address, 0x8a47f74d1ee0e2edeb4f3a7e64ef3bd8e11d27c8
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 
                            32,
                            54,
                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                            mem[(2 * ceil32(return_data.size)) + 580 len 10]
        else:
            require return_data.size >= 32
            if not mem[ceil32(return_data.size) + 489]:
                revert with 0, 
                            32,
                            42,
                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[(2 * ceil32(return_data.size)) + 568 len 22]
            if arg1:
                require ext_code.size(0xdfe521292ece2a4f44242efbcd66bc594ca9714b)
                staticcall 0xdfe521292ece2a4f44242efbcd66bc594ca9714b.0xdd62ed3e with:
                        gas gas_remaining wei
                       args this.address, 0x8a47f74d1ee0e2edeb4f3a7e64ef3bd8e11d27c8
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                54,
                                0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                mem[(2 * ceil32(return_data.size)) + 580 len 10]
    if eth.balance(this.address) < 0:
        revert with 0, 
                    32,
                    38,
                    0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                    mem[(2 * ceil32(return_data.size)) + 728 len 26]
    if not ext_code.size(0xdfe521292ece2a4f44242efbcd66bc594ca9714b):
        revert with 0, 'Address: call to non-contract'
    mem[(2 * ceil32(return_data.size)) + 622 len 64] = approve(address arg1, uint256 arg2), 0x8a47f74d1ee0e2edeb4f3a7e, 0, Mask(224, 32, arg1) >> 32
    mem[(2 * ceil32(return_data.size)) + 714 len 4] = 0
    call 0xdfe521292ece2a4f44242efbcd66bc594ca9714b.0xe11d27c8 with:
         gas gas_remaining wei
        args Mask(224, 32, arg1) << 224, mem[(2 * ceil32(return_data.size)) + 686 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0x23b872dd(?????), Mask(224, 0, stor0), uint32(stor0), address(this.address), arg1
        if not unknown_0x23b872dd(?????), Mask(224, 0, stor0):
            revert with 0, 
                        32,
                        42,
                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[(2 * ceil32(return_data.size)) + 732 len 22]
        require ext_code.size(0x8a47f74d1ee0e2edeb4f3a7e64ef3bd8e11d27c8)
        call 0x8a47f74d1ee0e2edeb4f3a7e64ef3bd8e11d27c8.withdrawETH(address arg1, uint256 arg2, address arg3) with:
             gas gas_remaining wei
            args 0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c, arg1, 0xeab070713c14a5912e8407494643c644c9d1e35
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c)
        staticcall 0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c.0xbf92857c with:
                gas gas_remaining wei
               args address(owner)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 192
        if ext_call.return_data[160] <= sub_54fc49e2:
            revert with 0, '2'
    mem[(2 * ceil32(return_data.size)) + 654 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size:
            revert with ext_call.return_data[0 len return_data.size]
        revert with 0, 'SafeERC20: low-level call failed'
    if return_data.size:
        require return_data.size >= 32
        if not mem[(2 * ceil32(return_data.size)) + 654]:
            revert with 0, 
                        32,
                        42,
                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 733 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
    require ext_code.size(0x8a47f74d1ee0e2edeb4f3a7e64ef3bd8e11d27c8)
    call 0x8a47f74d1ee0e2edeb4f3a7e64ef3bd8e11d27c8.withdrawETH(address arg1, uint256 arg2, address arg3) with:
         gas gas_remaining wei
        args 0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c, arg1, 0xeab070713c14a5912e8407494643c644c9d1e35, mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 723 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c)
    staticcall 0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c.0xbf92857c with:
            gas gas_remaining wei
           args address(owner), mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 659 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
    mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 623 len 192] = ext_call.return_data[0 len 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 192
    if ext_call.return_data[160] > sub_54fc49e2:
    mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 623] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 627] = 32
    mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 659] = 1
    mem[ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 691] = '2'
    revert with memory
      from ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 623
       len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
}



}
