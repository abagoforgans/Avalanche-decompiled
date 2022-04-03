contract main {




// =====================  Runtime code  =====================


address owner;

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit 0x188be007: owner, 0
    owner = 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit 0x188be007: owner, arg1
    owner = arg1
}

function sub_36d26638(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[128] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66
    mem[160] = 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10b
    mem[192] = 0xb4a47c3900000000000000000000000000000000000000000000000000000000
    mem[196] = 0xe54ca86531e17ef3616d22ca28b0d458b6c891
    idx = 0
    s = 388
    t = 128
    while idx < 2:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(arg1))
    call address(arg1).0xb4a47c39 with:
         gas gas_remaining wei
        args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, 0xefa94de7a4656d787667c749f7e1223d71e9fd, Array(len=2, data=mem[388 len 64]), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66, 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10b
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[224] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66
    mem[256] = 0x50b7545627a5162f82a992c33b87adc75187b2
    mem[288] = 0xb4a47c3900000000000000000000000000000000000000000000000000000000
    mem[292] = 0xe54ca86531e17ef3616d22ca28b0d458b6c891
    idx = 0
    s = 484
    t = 224
    while idx < 2:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(arg1))
    call address(arg1).0xb4a47c39 with:
         gas gas_remaining wei
        args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, 0xefa94de7a4656d787667c749f7e1223d71e9fd, Array(len=2, data=mem[484 len 64]), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66, 0x50b7545627a5162f82a992c33b87adc75187b2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[320] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66
    mem[352] = 0xc7198437980c041c805a1edcba50c1ce5db951
    mem[384] = 0xb4a47c3900000000000000000000000000000000000000000000000000000000
    mem[388] = 0xe54ca86531e17ef3616d22ca28b0d458b6c891
    idx = 0
    s = 580
    t = 320
    while idx < 2:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(arg1))
    call address(arg1).0xb4a47c39 with:
         gas gas_remaining wei
        args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, 0xefa94de7a4656d787667c749f7e1223d71e9fd, Array(len=2, data=mem[580 len 64]), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66, 0xc7198437980c041c805a1edcba50c1ce5db951
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[416] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66
    mem[448] = 0xd586e7f844cea2f87f50152665bcbc2c279d8d
    mem[480] = 0xb4a47c3900000000000000000000000000000000000000000000000000000000
    mem[484] = 0xe54ca86531e17ef3616d22ca28b0d458b6c891
    idx = 0
    s = 676
    t = 416
    while idx < 2:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(arg1))
    call address(arg1).0xb4a47c39 with:
         gas gas_remaining wei
        args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, 0xefa94de7a4656d787667c749f7e1223d71e9fd, Array(len=2, data=mem[676 len 64]), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66, 0xd586e7f844cea2f87f50152665bcbc2c279d8d
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[512] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66
    mem[544] = 0x5947bb275c521040051d82396192181b413227
    mem[576] = 0xb4a47c3900000000000000000000000000000000000000000000000000000000
    mem[580] = 0xe54ca86531e17ef3616d22ca28b0d458b6c891
    idx = 0
    s = 772
    t = 512
    while idx < 2:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(arg1))
    call address(arg1).0xb4a47c39 with:
         gas gas_remaining wei
        args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, 0xefa94de7a4656d787667c749f7e1223d71e9fd, Array(len=2, data=mem[772 len 64]), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66, 0x5947bb275c521040051d82396192181b413227
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setDai(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[128] = 0xd586e7f844cea2f87f50152665bcbc2c279d8d
    mem[160] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66
    mem[192] = 0xb4a47c3900000000000000000000000000000000000000000000000000000000
    mem[196] = 0xe54ca86531e17ef3616d22ca28b0d458b6c891
    idx = 0
    s = 388
    t = 128
    while idx < 2:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(arg1)
    call arg1.0xb4a47c39 with:
         gas gas_remaining wei
        args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, 0xefa94de7a4656d787667c749f7e1223d71e9fd, Array(len=2, data=mem[388 len 64]), 0xd586e7f844cea2f87f50152665bcbc2c279d8d, 0xb31f66aa3c1e785363f0875a1b74e27b85fd66
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[224] = 0xd586e7f844cea2f87f50152665bcbc2c279d8d
    mem[256] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66
    mem[288] = 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10b
    mem[320] = 0xb4a47c3900000000000000000000000000000000000000000000000000000000
    mem[324] = 0xe54ca86531e17ef3616d22ca28b0d458b6c891
    idx = 0
    s = 516
    t = 224
    while idx < 3:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(arg1)
    call arg1.0xb4a47c39 with:
         gas gas_remaining wei
        args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, 0xefa94de7a4656d787667c749f7e1223d71e9fd, Array(len=3, data=mem[516 len 96]), 0xd586e7f844cea2f87f50152665bcbc2c279d8d, 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10b
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[352] = 0xd586e7f844cea2f87f50152665bcbc2c279d8d
    mem[384] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66
    mem[416] = 0x50b7545627a5162f82a992c33b87adc75187b2
    mem[448] = 0xb4a47c3900000000000000000000000000000000000000000000000000000000
    mem[452] = 0xe54ca86531e17ef3616d22ca28b0d458b6c891
    idx = 0
    s = 644
    t = 352
    while idx < 3:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(arg1)
    call arg1.0xb4a47c39 with:
         gas gas_remaining wei
        args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, 0xefa94de7a4656d787667c749f7e1223d71e9fd, Array(len=3, data=mem[644 len 96]), 0xd586e7f844cea2f87f50152665bcbc2c279d8d, 0x50b7545627a5162f82a992c33b87adc75187b2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[480] = 0xd586e7f844cea2f87f50152665bcbc2c279d8d
    mem[512] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66
    mem[544] = 0xc7198437980c041c805a1edcba50c1ce5db951
    mem[576] = 0xb4a47c3900000000000000000000000000000000000000000000000000000000
    mem[580] = 0xe54ca86531e17ef3616d22ca28b0d458b6c891
    idx = 0
    s = 772
    t = 480
    while idx < 3:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(arg1)
    call arg1.0xb4a47c39 with:
         gas gas_remaining wei
        args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, 0xefa94de7a4656d787667c749f7e1223d71e9fd, Array(len=3, data=mem[772 len 96]), 0xd586e7f844cea2f87f50152665bcbc2c279d8d, 0xc7198437980c041c805a1edcba50c1ce5db951
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[608] = 0xd586e7f844cea2f87f50152665bcbc2c279d8d
    mem[640] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66
    mem[672] = 0x5947bb275c521040051d82396192181b413227
    mem[704] = 0xb4a47c3900000000000000000000000000000000000000000000000000000000
    mem[708] = 0xe54ca86531e17ef3616d22ca28b0d458b6c891
    idx = 0
    s = 900
    t = 608
    while idx < 3:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(arg1)
    call arg1.0xb4a47c39 with:
         gas gas_remaining wei
        args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, 0xefa94de7a4656d787667c749f7e1223d71e9fd, Array(len=3, data=mem[900 len 96]), 0xd586e7f844cea2f87f50152665bcbc2c279d8d, 0x5947bb275c521040051d82396192181b413227
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setUsdt(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[128] = 0xc7198437980c041c805a1edcba50c1ce5db951
    mem[160] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66
    mem[192] = 0xb4a47c3900000000000000000000000000000000000000000000000000000000
    mem[196] = 0xe54ca86531e17ef3616d22ca28b0d458b6c891
    idx = 0
    s = 388
    t = 128
    while idx < 2:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(arg1)
    call arg1.0xb4a47c39 with:
         gas gas_remaining wei
        args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, 0xefa94de7a4656d787667c749f7e1223d71e9fd, Array(len=2, data=mem[388 len 64]), 0xc7198437980c041c805a1edcba50c1ce5db951, 0xb31f66aa3c1e785363f0875a1b74e27b85fd66
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[224] = 0xc7198437980c041c805a1edcba50c1ce5db951
    mem[256] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66
    mem[288] = 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10b
    mem[320] = 0xb4a47c3900000000000000000000000000000000000000000000000000000000
    mem[324] = 0xe54ca86531e17ef3616d22ca28b0d458b6c891
    idx = 0
    s = 516
    t = 224
    while idx < 3:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(arg1)
    call arg1.0xb4a47c39 with:
         gas gas_remaining wei
        args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, 0xefa94de7a4656d787667c749f7e1223d71e9fd, Array(len=3, data=mem[516 len 96]), 0xc7198437980c041c805a1edcba50c1ce5db951, 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10b
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[352] = 0xc7198437980c041c805a1edcba50c1ce5db951
    mem[384] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66
    mem[416] = 0x50b7545627a5162f82a992c33b87adc75187b2
    mem[448] = 0xb4a47c3900000000000000000000000000000000000000000000000000000000
    mem[452] = 0xe54ca86531e17ef3616d22ca28b0d458b6c891
    idx = 0
    s = 644
    t = 352
    while idx < 3:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(arg1)
    call arg1.0xb4a47c39 with:
         gas gas_remaining wei
        args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, 0xefa94de7a4656d787667c749f7e1223d71e9fd, Array(len=3, data=mem[644 len 96]), 0xc7198437980c041c805a1edcba50c1ce5db951, 0x50b7545627a5162f82a992c33b87adc75187b2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[480] = 0xc7198437980c041c805a1edcba50c1ce5db951
    mem[512] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66
    mem[544] = 0xd586e7f844cea2f87f50152665bcbc2c279d8d
    mem[576] = 0xb4a47c3900000000000000000000000000000000000000000000000000000000
    mem[580] = 0xe54ca86531e17ef3616d22ca28b0d458b6c891
    idx = 0
    s = 772
    t = 480
    while idx < 3:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(arg1)
    call arg1.0xb4a47c39 with:
         gas gas_remaining wei
        args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, 0xefa94de7a4656d787667c749f7e1223d71e9fd, Array(len=3, data=mem[772 len 96]), 0xc7198437980c041c805a1edcba50c1ce5db951, 0xd586e7f844cea2f87f50152665bcbc2c279d8d
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[608] = 0xc7198437980c041c805a1edcba50c1ce5db951
    mem[640] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66
    mem[672] = 0x5947bb275c521040051d82396192181b413227
    mem[704] = 0xb4a47c3900000000000000000000000000000000000000000000000000000000
    mem[708] = 0xe54ca86531e17ef3616d22ca28b0d458b6c891
    idx = 0
    s = 900
    t = 608
    while idx < 3:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(arg1)
    call arg1.0xb4a47c39 with:
         gas gas_remaining wei
        args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, 0xefa94de7a4656d787667c749f7e1223d71e9fd, Array(len=3, data=mem[900 len 96]), 0xc7198437980c041c805a1edcba50c1ce5db951, 0x5947bb275c521040051d82396192181b413227
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setLink(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[128] = 0x5947bb275c521040051d82396192181b413227
    mem[160] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66
    mem[192] = 0xb4a47c3900000000000000000000000000000000000000000000000000000000
    mem[196] = 0xe54ca86531e17ef3616d22ca28b0d458b6c891
    idx = 0
    s = 388
    t = 128
    while idx < 2:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(arg1)
    call arg1.0xb4a47c39 with:
         gas gas_remaining wei
        args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, 0xefa94de7a4656d787667c749f7e1223d71e9fd, Array(len=2, data=mem[388 len 64]), 0x5947bb275c521040051d82396192181b413227, 0xb31f66aa3c1e785363f0875a1b74e27b85fd66
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[224] = 0x5947bb275c521040051d82396192181b413227
    mem[256] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66
    mem[288] = 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10b
    mem[320] = 0xb4a47c3900000000000000000000000000000000000000000000000000000000
    mem[324] = 0xe54ca86531e17ef3616d22ca28b0d458b6c891
    idx = 0
    s = 516
    t = 224
    while idx < 3:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(arg1)
    call arg1.0xb4a47c39 with:
         gas gas_remaining wei
        args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, 0xefa94de7a4656d787667c749f7e1223d71e9fd, Array(len=3, data=mem[516 len 96]), 0x5947bb275c521040051d82396192181b413227, 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10b
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[352] = 0x5947bb275c521040051d82396192181b413227
    mem[384] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66
    mem[416] = 0x50b7545627a5162f82a992c33b87adc75187b2
    mem[448] = 0xb4a47c3900000000000000000000000000000000000000000000000000000000
    mem[452] = 0xe54ca86531e17ef3616d22ca28b0d458b6c891
    idx = 0
    s = 644
    t = 352
    while idx < 3:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(arg1)
    call arg1.0xb4a47c39 with:
         gas gas_remaining wei
        args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, 0xefa94de7a4656d787667c749f7e1223d71e9fd, Array(len=3, data=mem[644 len 96]), 0x5947bb275c521040051d82396192181b413227, 0x50b7545627a5162f82a992c33b87adc75187b2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[480] = 0x5947bb275c521040051d82396192181b413227
    mem[512] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66
    mem[544] = 0xc7198437980c041c805a1edcba50c1ce5db951
    mem[576] = 0xb4a47c3900000000000000000000000000000000000000000000000000000000
    mem[580] = 0xe54ca86531e17ef3616d22ca28b0d458b6c891
    idx = 0
    s = 772
    t = 480
    while idx < 3:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(arg1)
    call arg1.0xb4a47c39 with:
         gas gas_remaining wei
        args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, 0xefa94de7a4656d787667c749f7e1223d71e9fd, Array(len=3, data=mem[772 len 96]), 0x5947bb275c521040051d82396192181b413227, 0xc7198437980c041c805a1edcba50c1ce5db951
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[608] = 0x5947bb275c521040051d82396192181b413227
    mem[640] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66
    mem[672] = 0xd586e7f844cea2f87f50152665bcbc2c279d8d
    mem[704] = 0xb4a47c3900000000000000000000000000000000000000000000000000000000
    mem[708] = 0xe54ca86531e17ef3616d22ca28b0d458b6c891
    idx = 0
    s = 900
    t = 608
    while idx < 3:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(arg1)
    call arg1.0xb4a47c39 with:
         gas gas_remaining wei
        args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, 0xefa94de7a4656d787667c749f7e1223d71e9fd, Array(len=3, data=mem[900 len 96]), 0x5947bb275c521040051d82396192181b413227, 0xd586e7f844cea2f87f50152665bcbc2c279d8d
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setWeth(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[128] = 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10b
    mem[160] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66
    mem[192] = 0xb4a47c3900000000000000000000000000000000000000000000000000000000
    mem[196] = 0xe54ca86531e17ef3616d22ca28b0d458b6c891
    idx = 0
    s = 388
    t = 128
    while idx < 2:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(arg1)
    call arg1.0xb4a47c39 with:
         gas gas_remaining wei
        args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, 0xefa94de7a4656d787667c749f7e1223d71e9fd, Array(len=2, data=mem[388 len 64]), 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10b, 0xb31f66aa3c1e785363f0875a1b74e27b85fd66
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[224] = 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10b
    mem[256] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66
    mem[288] = 0x50b7545627a5162f82a992c33b87adc75187b2
    mem[320] = 0xb4a47c3900000000000000000000000000000000000000000000000000000000
    mem[324] = 0xe54ca86531e17ef3616d22ca28b0d458b6c891
    idx = 0
    s = 516
    t = 224
    while idx < 3:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(arg1)
    call arg1.0xb4a47c39 with:
         gas gas_remaining wei
        args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, 0xefa94de7a4656d787667c749f7e1223d71e9fd, Array(len=3, data=mem[516 len 96]), 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10b, 0x50b7545627a5162f82a992c33b87adc75187b2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[352] = 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10b
    mem[384] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66
    mem[416] = 0xc7198437980c041c805a1edcba50c1ce5db951
    mem[448] = 0xb4a47c3900000000000000000000000000000000000000000000000000000000
    mem[452] = 0xe54ca86531e17ef3616d22ca28b0d458b6c891
    idx = 0
    s = 644
    t = 352
    while idx < 3:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(arg1)
    call arg1.0xb4a47c39 with:
         gas gas_remaining wei
        args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, 0xefa94de7a4656d787667c749f7e1223d71e9fd, Array(len=3, data=mem[644 len 96]), 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10b, 0xc7198437980c041c805a1edcba50c1ce5db951
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[480] = 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10b
    mem[512] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66
    mem[544] = 0xd586e7f844cea2f87f50152665bcbc2c279d8d
    mem[576] = 0xb4a47c3900000000000000000000000000000000000000000000000000000000
    mem[580] = 0xe54ca86531e17ef3616d22ca28b0d458b6c891
    idx = 0
    s = 772
    t = 480
    while idx < 3:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(arg1)
    call arg1.0xb4a47c39 with:
         gas gas_remaining wei
        args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, 0xefa94de7a4656d787667c749f7e1223d71e9fd, Array(len=3, data=mem[772 len 96]), 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10b, 0xd586e7f844cea2f87f50152665bcbc2c279d8d
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[608] = 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10b
    mem[640] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66
    mem[672] = 0x5947bb275c521040051d82396192181b413227
    mem[704] = 0xb4a47c3900000000000000000000000000000000000000000000000000000000
    mem[708] = 0xe54ca86531e17ef3616d22ca28b0d458b6c891
    idx = 0
    s = 900
    t = 608
    while idx < 3:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(arg1)
    call arg1.0xb4a47c39 with:
         gas gas_remaining wei
        args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, 0xefa94de7a4656d787667c749f7e1223d71e9fd, Array(len=3, data=mem[900 len 96]), 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10b, 0x5947bb275c521040051d82396192181b413227
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_3eec5384(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[128] = 0x50b7545627a5162f82a992c33b87adc75187b2
    mem[160] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66
    mem[192] = 0xb4a47c3900000000000000000000000000000000000000000000000000000000
    mem[196] = 0xe54ca86531e17ef3616d22ca28b0d458b6c891
    idx = 0
    s = 388
    t = 128
    while idx < 2:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(arg1))
    call address(arg1).0xb4a47c39 with:
         gas gas_remaining wei
        args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, 0xefa94de7a4656d787667c749f7e1223d71e9fd, Array(len=2, data=mem[388 len 64]), 0x50b7545627a5162f82a992c33b87adc75187b2, 0xb31f66aa3c1e785363f0875a1b74e27b85fd66
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[224] = 0x50b7545627a5162f82a992c33b87adc75187b2
    mem[256] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66
    mem[288] = 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10b
    mem[320] = 0xb4a47c3900000000000000000000000000000000000000000000000000000000
    mem[324] = 0xe54ca86531e17ef3616d22ca28b0d458b6c891
    idx = 0
    s = 516
    t = 224
    while idx < 3:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(arg1))
    call address(arg1).0xb4a47c39 with:
         gas gas_remaining wei
        args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, 0xefa94de7a4656d787667c749f7e1223d71e9fd, Array(len=3, data=mem[516 len 96]), 0x50b7545627a5162f82a992c33b87adc75187b2, 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10b
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[352] = 0x50b7545627a5162f82a992c33b87adc75187b2
    mem[384] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66
    mem[416] = 0xc7198437980c041c805a1edcba50c1ce5db951
    mem[448] = 0xb4a47c3900000000000000000000000000000000000000000000000000000000
    mem[452] = 0xe54ca86531e17ef3616d22ca28b0d458b6c891
    idx = 0
    s = 644
    t = 352
    while idx < 3:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(arg1))
    call address(arg1).0xb4a47c39 with:
         gas gas_remaining wei
        args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, 0xefa94de7a4656d787667c749f7e1223d71e9fd, Array(len=3, data=mem[644 len 96]), 0x50b7545627a5162f82a992c33b87adc75187b2, 0xc7198437980c041c805a1edcba50c1ce5db951
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[480] = 0x50b7545627a5162f82a992c33b87adc75187b2
    mem[512] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66
    mem[544] = 0xd586e7f844cea2f87f50152665bcbc2c279d8d
    mem[576] = 0xb4a47c3900000000000000000000000000000000000000000000000000000000
    mem[580] = 0xe54ca86531e17ef3616d22ca28b0d458b6c891
    idx = 0
    s = 772
    t = 480
    while idx < 3:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(arg1))
    call address(arg1).0xb4a47c39 with:
         gas gas_remaining wei
        args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, 0xefa94de7a4656d787667c749f7e1223d71e9fd, Array(len=3, data=mem[772 len 96]), 0x50b7545627a5162f82a992c33b87adc75187b2, 0xd586e7f844cea2f87f50152665bcbc2c279d8d
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[608] = 0x50b7545627a5162f82a992c33b87adc75187b2
    mem[640] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66
    mem[672] = 0x5947bb275c521040051d82396192181b413227
    mem[704] = 0xb4a47c3900000000000000000000000000000000000000000000000000000000
    mem[708] = 0xe54ca86531e17ef3616d22ca28b0d458b6c891
    idx = 0
    s = 900
    t = 608
    while idx < 3:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(arg1))
    call address(arg1).0xb4a47c39 with:
         gas gas_remaining wei
        args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, 0xefa94de7a4656d787667c749f7e1223d71e9fd, Array(len=3, data=mem[900 len 96]), 0x50b7545627a5162f82a992c33b87adc75187b2, 0x5947bb275c521040051d82396192181b413227
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_ff84c304(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[128] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66
    mem[160] = 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10b
    mem[192] = 0xb4a47c3900000000000000000000000000000000000000000000000000000000
    mem[196] = 0xe54ca86531e17ef3616d22ca28b0d458b6c891
    idx = 0
    s = 388
    t = 128
    while idx < 2:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(arg1))
    call address(arg1).0xb4a47c39 with:
         gas gas_remaining wei
        args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, 0xefa94de7a4656d787667c749f7e1223d71e9fd, Array(len=2, data=mem[388 len 64]), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66, 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10b
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[224] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66
    mem[256] = 0x50b7545627a5162f82a992c33b87adc75187b2
    mem[288] = 0xb4a47c3900000000000000000000000000000000000000000000000000000000
    mem[292] = 0xe54ca86531e17ef3616d22ca28b0d458b6c891
    idx = 0
    s = 484
    t = 224
    while idx < 2:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(arg1))
    call address(arg1).0xb4a47c39 with:
         gas gas_remaining wei
        args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, 0xefa94de7a4656d787667c749f7e1223d71e9fd, Array(len=2, data=mem[484 len 64]), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66, 0x50b7545627a5162f82a992c33b87adc75187b2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[320] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66
    mem[352] = 0xc7198437980c041c805a1edcba50c1ce5db951
    mem[384] = 0xb4a47c3900000000000000000000000000000000000000000000000000000000
    mem[388] = 0xe54ca86531e17ef3616d22ca28b0d458b6c891
    idx = 0
    s = 580
    t = 320
    while idx < 2:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(arg1))
    call address(arg1).0xb4a47c39 with:
         gas gas_remaining wei
        args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, 0xefa94de7a4656d787667c749f7e1223d71e9fd, Array(len=2, data=mem[580 len 64]), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66, 0xc7198437980c041c805a1edcba50c1ce5db951
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[416] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66
    mem[448] = 0xd586e7f844cea2f87f50152665bcbc2c279d8d
    mem[480] = 0xb4a47c3900000000000000000000000000000000000000000000000000000000
    mem[484] = 0xe54ca86531e17ef3616d22ca28b0d458b6c891
    idx = 0
    s = 676
    t = 416
    while idx < 2:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(arg1))
    call address(arg1).0xb4a47c39 with:
         gas gas_remaining wei
        args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, 0xefa94de7a4656d787667c749f7e1223d71e9fd, Array(len=2, data=mem[676 len 64]), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66, 0xd586e7f844cea2f87f50152665bcbc2c279d8d
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[512] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66
    mem[544] = 0x5947bb275c521040051d82396192181b413227
    mem[576] = 0xb4a47c3900000000000000000000000000000000000000000000000000000000
    mem[580] = 0xe54ca86531e17ef3616d22ca28b0d458b6c891
    idx = 0
    s = 772
    t = 512
    while idx < 2:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(arg1))
    call address(arg1).0xb4a47c39 with:
         gas gas_remaining wei
        args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, 0xefa94de7a4656d787667c749f7e1223d71e9fd, Array(len=2, data=mem[772 len 64]), 0xb31f66aa3c1e785363f0875a1b74e27b85fd66, 0x5947bb275c521040051d82396192181b413227
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[608] = 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10b
    mem[640] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66
    mem[672] = 0xb4a47c3900000000000000000000000000000000000000000000000000000000
    mem[676] = 0xe54ca86531e17ef3616d22ca28b0d458b6c891
    idx = 0
    s = 868
    t = 608
    while idx < 2:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(arg1))
    call address(arg1).0xb4a47c39 with:
         gas gas_remaining wei
        args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, 0xefa94de7a4656d787667c749f7e1223d71e9fd, Array(len=2, data=mem[868 len 64]), 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10b, 0xb31f66aa3c1e785363f0875a1b74e27b85fd66
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[704] = 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10b
    mem[736] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66
    mem[768] = 0x50b7545627a5162f82a992c33b87adc75187b2
    mem[800] = 0xb4a47c3900000000000000000000000000000000000000000000000000000000
    mem[804] = 0xe54ca86531e17ef3616d22ca28b0d458b6c891
    idx = 0
    s = 996
    t = 704
    while idx < 3:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(arg1))
    call address(arg1).0xb4a47c39 with:
         gas gas_remaining wei
        args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, 0xefa94de7a4656d787667c749f7e1223d71e9fd, Array(len=3, data=mem[996 len 96]), 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10b, 0x50b7545627a5162f82a992c33b87adc75187b2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[832] = 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10b
    mem[864] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66
    mem[896] = 0xc7198437980c041c805a1edcba50c1ce5db951
    mem[928] = 0xb4a47c3900000000000000000000000000000000000000000000000000000000
    mem[932] = 0xe54ca86531e17ef3616d22ca28b0d458b6c891
    idx = 0
    s = 1124
    t = 832
    while idx < 3:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(arg1))
    call address(arg1).0xb4a47c39 with:
         gas gas_remaining wei
        args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, 0xefa94de7a4656d787667c749f7e1223d71e9fd, Array(len=3, data=mem[1124 len 96]), 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10b, 0xc7198437980c041c805a1edcba50c1ce5db951
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[960] = 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10b
    mem[992] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66
    mem[1024] = 0xd586e7f844cea2f87f50152665bcbc2c279d8d
    mem[1056] = 0xb4a47c3900000000000000000000000000000000000000000000000000000000
    mem[1060] = 0xe54ca86531e17ef3616d22ca28b0d458b6c891
    idx = 0
    s = 1252
    t = 960
    while idx < 3:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(arg1))
    call address(arg1).0xb4a47c39 with:
         gas gas_remaining wei
        args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, 0xefa94de7a4656d787667c749f7e1223d71e9fd, Array(len=3, data=mem[1252 len 96]), 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10b, 0xd586e7f844cea2f87f50152665bcbc2c279d8d
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[1088] = 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10b
    mem[1120] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66
    mem[1152] = 0x5947bb275c521040051d82396192181b413227
    mem[1184] = 0xb4a47c3900000000000000000000000000000000000000000000000000000000
    mem[1188] = 0xe54ca86531e17ef3616d22ca28b0d458b6c891
    idx = 0
    s = 1380
    t = 1088
    while idx < 3:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(arg1))
    call address(arg1).0xb4a47c39 with:
         gas gas_remaining wei
        args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, 0xefa94de7a4656d787667c749f7e1223d71e9fd, Array(len=3, data=mem[1380 len 96]), 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10b, 0x5947bb275c521040051d82396192181b413227
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[1216] = 0x50b7545627a5162f82a992c33b87adc75187b2
    mem[1248] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66
    mem[1280] = 0xb4a47c3900000000000000000000000000000000000000000000000000000000
    mem[1284] = 0xe54ca86531e17ef3616d22ca28b0d458b6c891
    idx = 0
    s = 1476
    t = 1216
    while idx < 2:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(arg1))
    call address(arg1).0xb4a47c39 with:
         gas gas_remaining wei
        args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, 0xefa94de7a4656d787667c749f7e1223d71e9fd, Array(len=2, data=mem[1476 len 64]), 0x50b7545627a5162f82a992c33b87adc75187b2, 0xb31f66aa3c1e785363f0875a1b74e27b85fd66
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[1312] = 0x50b7545627a5162f82a992c33b87adc75187b2
    mem[1344] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66
    mem[1376] = 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10b
    mem[1408] = 0xb4a47c3900000000000000000000000000000000000000000000000000000000
    mem[1412] = 0xe54ca86531e17ef3616d22ca28b0d458b6c891
    idx = 0
    s = 1604
    t = 1312
    while idx < 3:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(arg1))
    call address(arg1).0xb4a47c39 with:
         gas gas_remaining wei
        args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, 0xefa94de7a4656d787667c749f7e1223d71e9fd, Array(len=3, data=mem[1604 len 96]), 0x50b7545627a5162f82a992c33b87adc75187b2, 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10b
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[1440] = 0x50b7545627a5162f82a992c33b87adc75187b2
    mem[1472] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66
    mem[1504] = 0xc7198437980c041c805a1edcba50c1ce5db951
    mem[1536] = 0xb4a47c3900000000000000000000000000000000000000000000000000000000
    mem[1540] = 0xe54ca86531e17ef3616d22ca28b0d458b6c891
    idx = 0
    s = 1732
    t = 1440
    while idx < 3:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(arg1))
    call address(arg1).0xb4a47c39 with:
         gas gas_remaining wei
        args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, 0xefa94de7a4656d787667c749f7e1223d71e9fd, Array(len=3, data=mem[1732 len 96]), 0x50b7545627a5162f82a992c33b87adc75187b2, 0xc7198437980c041c805a1edcba50c1ce5db951
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[1568] = 0x50b7545627a5162f82a992c33b87adc75187b2
    mem[1600] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66
    mem[1632] = 0xd586e7f844cea2f87f50152665bcbc2c279d8d
    mem[1664] = 0xb4a47c3900000000000000000000000000000000000000000000000000000000
    mem[1668] = 0xe54ca86531e17ef3616d22ca28b0d458b6c891
    idx = 0
    s = 1860
    t = 1568
    while idx < 3:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(arg1))
    call address(arg1).0xb4a47c39 with:
         gas gas_remaining wei
        args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, 0xefa94de7a4656d787667c749f7e1223d71e9fd, Array(len=3, data=mem[1860 len 96]), 0x50b7545627a5162f82a992c33b87adc75187b2, 0xd586e7f844cea2f87f50152665bcbc2c279d8d
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[1696] = 0x50b7545627a5162f82a992c33b87adc75187b2
    mem[1728] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66
    mem[1760] = 0x5947bb275c521040051d82396192181b413227
    mem[1792] = 0xb4a47c3900000000000000000000000000000000000000000000000000000000
    mem[1796] = 0xe54ca86531e17ef3616d22ca28b0d458b6c891
    idx = 0
    s = 1988
    t = 1696
    while idx < 3:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(arg1))
    call address(arg1).0xb4a47c39 with:
         gas gas_remaining wei
        args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, 0xefa94de7a4656d787667c749f7e1223d71e9fd, Array(len=3, data=mem[1988 len 96]), 0x50b7545627a5162f82a992c33b87adc75187b2, 0x5947bb275c521040051d82396192181b413227
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[1824] = 0xc7198437980c041c805a1edcba50c1ce5db951
    mem[1856] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66
    mem[1888] = 0xb4a47c3900000000000000000000000000000000000000000000000000000000
    mem[1892] = 0xe54ca86531e17ef3616d22ca28b0d458b6c891
    idx = 0
    s = 2084
    t = 1824
    while idx < 2:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(arg1))
    call address(arg1).0xb4a47c39 with:
         gas gas_remaining wei
        args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, 0xefa94de7a4656d787667c749f7e1223d71e9fd, Array(len=2, data=mem[2084 len 64]), 0xc7198437980c041c805a1edcba50c1ce5db951, 0xb31f66aa3c1e785363f0875a1b74e27b85fd66
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[1920] = 0xc7198437980c041c805a1edcba50c1ce5db951
    mem[1952] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66
    mem[1984] = 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10b
    mem[2016] = 0xb4a47c3900000000000000000000000000000000000000000000000000000000
    mem[2020] = 0xe54ca86531e17ef3616d22ca28b0d458b6c891
    idx = 0
    s = 2212
    t = 1920
    while idx < 3:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(arg1))
    call address(arg1).0xb4a47c39 with:
         gas gas_remaining wei
        args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, 0xefa94de7a4656d787667c749f7e1223d71e9fd, Array(len=3, data=mem[2212 len 96]), 0xc7198437980c041c805a1edcba50c1ce5db951, 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10b
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[2048] = 0xc7198437980c041c805a1edcba50c1ce5db951
    mem[2080] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66
    mem[2112] = 0x50b7545627a5162f82a992c33b87adc75187b2
    mem[2144] = 0xb4a47c3900000000000000000000000000000000000000000000000000000000
    mem[2148] = 0xe54ca86531e17ef3616d22ca28b0d458b6c891
    idx = 0
    s = 2340
    t = 2048
    while idx < 3:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(arg1))
    call address(arg1).0xb4a47c39 with:
         gas gas_remaining wei
        args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, 0xefa94de7a4656d787667c749f7e1223d71e9fd, Array(len=3, data=mem[2340 len 96]), 0xc7198437980c041c805a1edcba50c1ce5db951, 0x50b7545627a5162f82a992c33b87adc75187b2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[2176] = 0xc7198437980c041c805a1edcba50c1ce5db951
    mem[2208] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66
    mem[2240] = 0xd586e7f844cea2f87f50152665bcbc2c279d8d
    mem[2272] = 0xb4a47c3900000000000000000000000000000000000000000000000000000000
    mem[2276] = 0xe54ca86531e17ef3616d22ca28b0d458b6c891
    idx = 0
    s = 2468
    t = 2176
    while idx < 3:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(arg1))
    call address(arg1).0xb4a47c39 with:
         gas gas_remaining wei
        args 0xe54ca86531e17ef3616d22ca28b0d458b6c891, 0xefa94de7a4656d787667c749f7e1223d71e9fd, Array(len=3, data=mem[2468 len 96]), 0xc7198437980c041c805a1edcba50c1ce5db951, 0xd586e7f844cea2f87f50152665bcbc2c279d8d
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    # nil
}



}
