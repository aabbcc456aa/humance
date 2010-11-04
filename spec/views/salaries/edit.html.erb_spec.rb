require 'spec_helper'

describe "salaries/edit.html.erb" do
  before(:each) do
    @salary = assign(:salary, stub_model(Salary,
      :new_record? => false,
      :a => 1.5,
      :b => 1.5,
      :c => 1.5,
      :d => 1.5,
      :e => 1.5,
      :f => 1.5,
      :g => 1.5,
      :h => 1.5,
      :i => 1.5,
      :j => 1.5,
      :k => 1.5,
      :l => 1.5,
      :m => 1.5,
      :n => 1.5,
      :o => 1.5,
      :p => 1.5,
      :q => 1.5,
      :r => 1.5,
      :s => 1.5,
      :t => 1.5,
      :u => 1.5,
      :v => 1.5,
      :w => 1.5,
      :x => 1.5,
      :y => 1.5,
      :z => 1.5
    ))
  end

  it "renders the edit salary form" do
    render

    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "form", :action => salary_path(@salary), :method => "post" do
      assert_select "input#salary_a", :name => "salary[a]"
      assert_select "input#salary_b", :name => "salary[b]"
      assert_select "input#salary_c", :name => "salary[c]"
      assert_select "input#salary_d", :name => "salary[d]"
      assert_select "input#salary_e", :name => "salary[e]"
      assert_select "input#salary_f", :name => "salary[f]"
      assert_select "input#salary_g", :name => "salary[g]"
      assert_select "input#salary_h", :name => "salary[h]"
      assert_select "input#salary_i", :name => "salary[i]"
      assert_select "input#salary_j", :name => "salary[j]"
      assert_select "input#salary_k", :name => "salary[k]"
      assert_select "input#salary_l", :name => "salary[l]"
      assert_select "input#salary_m", :name => "salary[m]"
      assert_select "input#salary_n", :name => "salary[n]"
      assert_select "input#salary_o", :name => "salary[o]"
      assert_select "input#salary_p", :name => "salary[p]"
      assert_select "input#salary_q", :name => "salary[q]"
      assert_select "input#salary_r", :name => "salary[r]"
      assert_select "input#salary_s", :name => "salary[s]"
      assert_select "input#salary_t", :name => "salary[t]"
      assert_select "input#salary_u", :name => "salary[u]"
      assert_select "input#salary_v", :name => "salary[v]"
      assert_select "input#salary_w", :name => "salary[w]"
      assert_select "input#salary_x", :name => "salary[x]"
      assert_select "input#salary_y", :name => "salary[y]"
      assert_select "input#salary_z", :name => "salary[z]"
    end
  end
end
